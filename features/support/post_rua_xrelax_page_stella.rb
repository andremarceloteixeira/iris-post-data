
#atachs files and proxy data!
#patths
class PostRuaAndXrelaxStella
  include PageObject
  include GenericRua69


  page_url  "http://itshidden.eu/proxy/browse.php?u=http%3A%2F%2Fwww.rua69.com%2F%3Fview%3Dpost%26cityid%3D15%26lang%3Den%26catid%3D1%26subcatid%3D2%26shortcutregion%3D&b=0&f=norefer"

  text_field(:adtitle, :name => "adtitle")
  text_field(:area, :name => "area")
  text_field(:addesc, :name => "addesc")
  text_field(:email, :name => "email")
  text_field(:captcha, :name => "captcha")
  text_field(:u, :name => "u")
  #Coropo do Anuncio!

  def set_inputs(file)
    sleep(4);
    self.adtitle = file['title']
    self.area = file['area'];
    self.addesc = file['desc']
    self.email = file['email'];
    self.captcha = self.set_image_captcha();
    sleep(2);
  end

  def   setBrowserUrl
    self.browser.find_element(:xpath => '//*[@id="webproxyform"]/input[2]').click
  end

  def clickOk
    sleep(2);
    self.browser.find_element(:xpath => '/html/body/div[1]/div[3]/div/div/div[1]/div/div/form/table[3]/tbody/tr[3]/td/input').click
    sleep(2);
    self.browser.find_element(:xpath => '/html/body/div[1]/div[3]/div/div/div[1]/div/div/form/button').click
  end

end
