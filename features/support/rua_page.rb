
#atachs files and proxy data!
#patths
class Rua
  include PageObject

  page_url  "http://www.proxy4free.com/"

  text_field(:adtitle, :name => "adtitle")
  text_field(:area, :name => "area")
  text_field(:addesc, :name => "addesc")
  text_field(:email, :name => "email")
  text_field(:captcha, :name => "captcha")
  text_field(:q, :name => "q")




  def searchProxy
    genericUrl = 'www.rua69.com/?view=post&cityid=15&lang=en&catid=1&subcatid=2&shortcutregion=';
    proxys = {'http://www.befreedom.gq' => 'iris',
              'http://www.  havefann.gq' => 'veronica',
              'http://www.usinternet.gq'=> 'stella',
              'http://www.unsiteme.gq'=> 'iris',
              'http://www.unoblock.gq'=> 'veronica',
              'http://www.dontblock.gq'=> 'stella',
              'http://www.noblocky.gq'=> 'iris',
              'http://www.nonoproxy.gq'=> 'veronica',
              'http://www.maloxy.gq'=> 'stella'
    };
    proxys.each {|key, value|
      puts key;
      visit_page key;
      #self.browser.find_element(:xpath => "//*[contains(text(),'#{key}')]").click
      #sleep(5)
      self.browser.find_element(:xpath => '//*[@id="address_box"]').set genericUrl
      self.browser.find_element(:xpath => '//*[@id="go"]').click
    }
  end

end
