module StatusChecker
  require 'watir'

  class << self
    def excute(url, text_required_on_page, nb_occurence, wait_ajax_loading = 0)
      browser = Watir::Browser.new
      browser.goto url
      sleep wait_ajax_loading
      check_occurences(browser.text, text_required_on_page, nb_occurence)
    end

    private

    def check_occurences(text, text_required_on_page, nb_occurence)
      text.scan(/#{text_required_on_page}/).length == nb_occurence
    end
  end
end
