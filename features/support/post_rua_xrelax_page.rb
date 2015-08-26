
#atachs files and proxy data!
#patths
class PostRuaAndXrelaxIris
  include PageObject
  include GenericRua69


  page_url  "http://www.rua69.com/?view=post&cityid=15&lang=en&catid=1&subcatid=2&shortcutregion="

  text_field(:adtitle, :name => "adtitle")
  text_field(:area, :name => "area")
  text_field(:addesc, :name => "addesc")
  text_field(:email, :name => "email")
  text_field(:captcha, :name => "captcha")


  #Coropo do Anuncio!
  def set_inputs(file)
    sleep(2);
    self.adtitle = file['title']
    self.area = file['area'];
    self.addesc = file['desc']
    self.email = file['email'];
    self.captcha = self.set_image_captcha();
    sleep(2);
  end

  def clickOk
    sleep(2);
    self.browser.find_element(:xpath => '/html/body/div[1]/div[3]/div/div/div[1]/div/div/form/table[3]/tbody/tr[3]/td/input').click
    sleep(2);
    self.browser.find_element(:xpath => '/html/body/div[1]/div[3]/div/div/div[1]/div/div/form/button').click
  end

end
