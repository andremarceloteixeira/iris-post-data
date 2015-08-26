module PageObject
  module PersistantBrowser

    @@browser = false

    def self.get_browser
      if !@@browser
        client = Selenium::WebDriver::Remote::Http::Default.new
        client.timeout = 100
        profile = Selenium::WebDriver::Firefox::Profile.new
        profile['browser.download.folderList'] = 2
        profile['browser.download.manager.showWhenStarting'] = false
        profile['browser.download.dir'] = " /home/marcelo/Downloads/"
        profile['browser.download.folderList'] = 2
        profile['browser.helperApps.neverAsk.saveToDisk'] = "image/png"
        @@browser = Selenium::WebDriver.for :firefox, :profile => profile,  :http_client => client
      end
      @@browser
    end

    def self.quit
      @@browser.close
    end
  end
end
