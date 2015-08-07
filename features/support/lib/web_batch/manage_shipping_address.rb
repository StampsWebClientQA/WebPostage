module Batch
  class ManageShippingAddresses < BrowserObject
    public

    def name(row)
      sleep(1)
      grid_cell_text row, 1
    end

    def company(row)
      sleep(1)
      grid_cell_text row, 2
    end

    def city(row)
      sleep(1)
      grid_cell_text row, 3
    end

    def state(row)
      sleep(1)
      grid_cell_text row, 4
    end

    def locate_address(name, company, city)
      rows = shipping_address_count
      1.upto rows do |row|
        browser_helper.click window_title
        grid_name = name row
        grid_company = company row
        grid_city = city row
        grid_state = state row
        if (grid_name.casecmp(name)==0) && (grid_company.casecmp(company)==0) && (grid_city.casecmp(city)==0)
          log "Match found! - Row #{row} :: Name=#{grid_name} :: Company=#{grid_company} :: City=#{grid_city} ::  State=#{grid_state} :: "
          return row
        else
          log "No match - Row #{row} :: Name=#{grid_name} :: Company=#{grid_company} :: City=#{grid_city} ::  State=#{grid_state} :: "
        end
      end
      0
    end

    def present?
      browser_helper.present?  add_button
    end

    def click_delete_button
      begin
        browser_helper.click(delete_button, "Delete") if browser_helper.present?  delete_button
        browser_helper.click window_title, 'window_title'
      rescue
        #ignore
      end
    end

    def delete *args
      case args.length
        when 1
          address = args[0]
          if address.is_a? Hash
            delete_row(locate_address(address["name"], address["company"], address["city"]))
          else
            raise "Address format is not yet supported for this delete call."
          end

        else
          raise "Parameter Exception: Paramter not supported."
      end
    end

    def delete_row(number)
      @delete_shipping_address = DeleteShippingAddress.new(@browser)
      3.times {
        select_row number
        click_delete_button
        break if @delete_shipping_address.present?
      }
      @delete_shipping_address.delete
      @delete_shipping_address.close if @delete_shipping_address.present?
    end

    def add(*args)
      add_shipping_address_window
      case args.length
        when 0
          AddShippingAdress.new(@browser)
        when 1
          @shipping_address_form = AddShippingAdress.new(@browser)
          address = args[0]
          case address
            when Hash
              @shipping_address_form.shipping_address = address
            else
              raise "Illegal Ship-to argument"
          end
        else
          raise "add_address:  Illegal number of arguments #{args.length}"
      end
    end

    def add_shipping_address_window
      @shipping_address_form = AddShippingAdress.new(@browser)
      5.times {
        begin
          break if @shipping_address_form.present?
          browser_helper.click add_button, "add_button"
          add_button.wait_until
        rescue
          #ignore
        end
      }
    end

    def edit_address(name, company, city, new_address_details)
      row_num = locate_address(name, company, city)
      if row_num > 0
        select_row row_num
        self.edit new_address_details
      end
      #@test_status = locate_address(new_address_details[:name], new_address_details[:company], new_address_details[:city])
      close_window
      self
    end

    def address_located? * args #name, company, city
      case args.length
        when 1
          if args[0].is_a? Hash
            address_hash = args[0]
            name = address_hash["name"]
            company = address_hash["company"]
            city = address_hash["city"]
          else
            raise "Wrong number of arguments for locate_address" unless args.length == 3
          end
        when 3
          name = args[0]
          company = args[1]
          city = args[2]
        else
          raise "Wrong number of arguments for locate_address" unless args.length == 3
      end
      locate_address(name, company, city) > 0
    end

    def edit(*args)
      edit_button.when_present.click
      case args.length
        when 0
          AddShippingAdress.new(@browser)
        when 1
          AddShippingAdress.new(@browser).shipping_address = args[0]
        else
          raise "Illegal number of arguments."
      end
      self
    end

    def select_row(row_num)
      click_row_until_selected(row_num, "class", "x-grid-item-selected")
      browser_helper.click window_title, 'window_title'
    end

    def click_row_until_selected(row_num, attibute, attribute_value)
      cell = grid_cell(row_num, 1)
      5.times do
        begin
          browser_helper.click cell, "cell(#{row_num}, 1)"
          #log_browser_click(cell, attibute, attribute_value)
          break if row_checked? row_num
        rescue
          #ignore
        end
      end
    end

    def deleted?
      @deleted
    end

    def delete_all
      begin
        count = shipping_address_count
        if count > 1
          for row in 1..(count)
            browser_helper.click window_title, 'window_title'
            delete_row 1
            log "Row #{row} :: Deleting row 1..."
            break if shipping_address_count == 1
          end
        end
      rescue
        #
      end
      @deleted = shipping_address_count == 1
      self
    end

    def close_window
      begin
        10.times{
          break unless browser_helper.present? close_button
          browser_helper.click close_button, "Close"
        }
      rescue
        #ignore
      end
    end

    def wait_until_present
      add_button.wait_until_present
    end

    def shipping_address_count
      wait_until_present
      rows = @browser.trs(:css => "div[id^=grid-][class*=x-panel-body-default]>div>div>table")
      log "Manage Shipping Address:: row count = #{rows.length.to_i}"
      rows.length.to_i
    end

    private
    def window_title
      @browser.div :css => 'div[class*=x-window-header-title-default]>div'
    end

    def grid_cell(row, column)
      @browser.td :css => "div[id^=grid-][class*=x-panel-body-default]>div>div>table:nth-child(#{row.to_i})>tbody>tr>td:nth-child(#{column.to_i})"
    end

    def grid_cell_text(row, column)
      browser_helper.text grid_cell(row, column), "grid.row#{row}.column#{column})"
    end

    def close_button
      @browser.image :css => "img[class*='x-tool-close']"
    end

    def row_checked?(row)
      field = @browser.table :css => "div[id^=manageShipFromWindow][class^=x-window-body]>div>div[id$=body]>div[id^=gridview]>div[class=x-grid-item-container]>table[data-recordindex='#{row.to_i-1}']"
      value = browser_helper.attribute_value field, "class"
      checked = value.include? "selected"
      log "Row #{row} selected? #{checked}"
      checked
    end

    def add_button
      @browser.link :css => "div[id^=manageShipFromWindow]>div[id^=toolbar]>div>div>a:nth-child(1)"
    end

    def edit_button
      @browser.link :css => "div[id^=manageShipFromWindow]>div[id^=toolbar]>div>div>a:nth-child(2)"
    end


    def delete_button
      @browser.link :css => "div[id^=manageShipFromWindow]>div[id^=toolbar]>div>div>a:nth-child(3)"
    end

  end
end