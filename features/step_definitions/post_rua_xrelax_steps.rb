Given(/^Going to Xrelax Page$/) do
  visit_page Xrelax
end

When(/^Post todos os anuncios$/) do
  on_page Xrelax do |page|
    page.inciarSessao
  end
end



Given(/^Going to Rua Page$/) do
  visit_page Rua
end

When(/^Post in rua todos os anuncios$/) do
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
      visit "#{key}";
      #self.browser.find_element(:xpath => "//*[contains(text(),'#{key}')]").click
      #sleep(5)
      self.browser.find_element(:xpath => '//*[@id="address_box"]').set genericUrl
      self.browser.find_element(:xpath => '//*[@id="go"]').click
    }
end
