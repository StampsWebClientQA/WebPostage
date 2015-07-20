module Batch
  class PrintWindowOrderErrors < Stamps::BrowserObject
    include Batch::PrintWindowCommon

    private
    def ok_button
      @browser.span :text => 'OK'
    end

    def continue_button
      @browser.span :text => 'Continue'
    end

    def cancel_button
      @browser.span :text => 'Cancel'
    end

    def error_message_label
      @browser.div :css => 'div[id^=dialoguemodal][class=x-autocontainer-innerCt]'
    end

    def window_title_div
      @browser.div :text => 'Order Errors'
    end

    public

    def present?
      browser_helper.field_present? error_message_label
    end

    def ok
      5.times{
        begin
          break unless browser_helper.field_present? ok_button
          browser_helper.click ok_button, 'OK'
        rescue
          #ignore
        end
      }
    end

    def continue
      5.times{
        begin
          continue_button.wait_until_present
        rescue
          #ignore
        end
        browser_helper.click continue_button, 'continue'
        sleep(1)
        break unless browser_helper.field_present? continue_button
      }
      PrintWindow.new(@browser)
    end

    def cancel
      browser_helper.click cancel_button, 'cancel'
    end

    def error_message
      begin
        error_message_label.wait_until_present
      rescue
        #ignore
      end
      error_message = browser_helper.text error_message_label
      log error_message
      error_message
    end
  end
end