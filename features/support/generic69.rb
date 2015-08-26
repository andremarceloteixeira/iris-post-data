require 'yaml'
module GenericRua69

  #set Image URL
  def set_image_captcha
    # download image
    system("tesseract /home/marcelo/Downloads/captcha.png.php /home/marcelo/RubymineProjects/iris-post-data/out")
    sleep(2);
    data = File.read("/home/marcelo/RubymineProjects/iris-post-data/out.txt")
    system("rm -f /home/marcelo/Downloads/captcha.png.php")
    sleep(2);
    return data.strip
  end

  #download IMAGES captcha Hacked
  def downloadImage
    self.browser.find_element(:id => 'addimage').click
    sleep(2);
  end

  def setInputs(page, name, file)
    sleep(2)
    str =
        <<END_TAG
        var append = "<a id="addimage" download href="+$("input[name$='captcha']").parent().find('img').attr('src');+"><img src="captcha.png.php"></a>";
           $("input[name$='captcha']").parent().append(append);
END_TAG
    page.execute_script(str)
    page.downloadImage();
    sleep(1);
    page.set_inputs(file);
    page.browser.find_element(:xpath => '/html/body/div[1]/div[3]/div/div/div[1]/div/div/form/table[2]/tbody/tr/td/input[1]').send_keys("/home/marcelo/RubymineProjects/iris-post-data/#{name}/1.png")
    page.browser.find_element(:xpath => '/html/body/div[1]/div[3]/div/div/div[1]/div/div/form/table[2]/tbody/tr/td/input[2]').send_keys("/home/marcelo/RubymineProjects/iris-post-data/#{name}/2.png")
    page.browser.find_element(:xpath => '/html/body/div[1]/div[3]/div/div/div[1]/div/div/form/table[2]/tbody/tr/td/input[3]').send_keys("/home/marcelo/RubymineProjects/iris-post-data/#{name}/3.png")
    page.clickOk
  end
end
