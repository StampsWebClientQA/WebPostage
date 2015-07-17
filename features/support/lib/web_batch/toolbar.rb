module Batch
  #require_relative 'grid'

  #
  #  Contains Add/Edit buton for orders.
  #
  class Toolbar < BrowserObject
    include GridCommon
    private
    def add_field
      @browser.span :text => 'Add'
    end

    def print_button
      @browser.elements(:text => 'Print').first
    end

    public

    def print *args
      printer_window = PrintWindow.new(@browser)
      printers_being_retrived = PluginErrorPrintersBeingRetrieved.new(@browser)
      15.times {
        break if printer_window.present?
        begin
          browser_helper.click print_button, "print_button"
          if printers_being_retrived.present?
            printers_being_retrived.print_error_message.okay
          end
        rescue
          #ignore
        end
      }
      if args.length==1
        printer_window.print_options *args
      end
      printer_window
    end

    def add
      add_field.when_present.click
      3.times do
        @order_id = order_id(1)
        break unless @order_id.size == 0
      end
      @order_id
    end

    def wait_until_present
      add_field.wait_until_present
    end

    def present?
      browser_helper.field_present?  add_field
    end
  end
end