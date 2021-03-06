
#atachs files and proxy data!
#patths
class Xrelax
  include PageObject

  page_url  "http://www.xrelax.pt/ad-listings/"

  text_field(:log, :name => "log")
  text_field(:pwd, :name => "pwd")


  text_field(:post_title, :name => "post_title")
  text_field(:cp_price, :name => "cp_price")
  text_field(:cp_street, :name => "cp_street")
  text_field(:cp_city, :name => "cp_city")
  text_field(:cp_state, :name => "cp_state")
  text_field(:cp_country, :name => "cp_country")
  text_field(:cp_zipcode, :name => "cp_zipcode")
  text_field(:tags_input, :name => "tags_input")
  text_field(:post_content, :name => "post_content")


  def inciarSessao
    pc = "marcelo"

    girls = "/home/#{pc}/Desktop/iris-post-data/elas.yml"

    for i in 1..1000
      elas = ["erica","guimaraes","gabriela","veronica"]
      #elas = ["iris","stella"]
      #elas = ["erica"]
      elas.each do |ela|
        self.browser.find_element(:xpath => '/html/body/div[1]/div[1]/div[1]/div/p/a[2]').click
        self.log = 'iris32'
        self.pwd = 'marcelo'
        self.browser.find_element(:xpath => '//*[@id="login"]').click
        self.browser.find_element(:xpath => '/html/body/div[1]/div[2]/div/div/div[2]/div/div/div[1]/a').click
        self.browser.find_element(:xpath => '/html/body/div[1]/div[1]/div[3]/div/a').click

        self.browser.find_element(id: 'ad_cat_id').click
        sleep(5)
        dropdown = self.browser.find_element(id: 'ad_cat_id')
        select_list = Selenium::WebDriver::Support::Select.new(dropdown)
        select_list.select_by(:text, 'Porto')
        sleep(5)
        self.browser.find_element(:xpath => '//*[@id="getcat"]').click
        self.browser.find_element(:xpath => '//*[@id="cp_state"]').click
        str =
            <<END_TAG
      $("#cp_country").removeAttr('style');
      $("#app-attachment-html-upload-form").removeAttr('style');
END_TAG
        self.browser.execute_script(str)

        self.browser.find_element(id: 'cp_country').click
        sleep(5)
        dropdown = self.browser.find_element(id: 'cp_country')
        select_list = Selenium::WebDriver::Support::Select.new(dropdown)
        select_list.select_by(:text, 'Portugal')

        path = "/home/#{pc}/Desktop/iris-post-data/#{ela}/#{ela}.yml"
        file = YAML.load_file(path)
        self.post_title = file['title']
        self.cp_price = file['price']
        self.cp_street = file['area']
        self.cp_city = file['city']
        self.cp_zipcode = file['phone']
        self.tags_input = file['phone']
        self.post_content = file['desc']
        self.browser.find_element(:xpath => '//*[@id="upload_1"]/input[1]').send_keys("/home/#{pc}/Desktop/iris-post-data/#{ela}/2.png")
        self.browser.find_element(:xpath => '//*[@id="upload_2"]/input[1]').send_keys("/home/#{pc}//Desktop/iris-post-data/#{ela}/1.png")
        self.browser.find_element(:xpath => '//*[@id="upload_3"]/input[1]').send_keys("/home/#{pc}//Desktop/iris-post-data/#{ela}/3.png")
        sleep(4)
        self.browser.find_element(:xpath => '//*[@id="mainform"]/ol/p/input').click
        sleep(4)
        self.browser.find_element(:xpath => '//*[@id="mainform"]/p[2]/input[2]').click
        sleep(4)
        self.browser.find_element(:xpath => '/html/body/div[1]/div[1]/div[1]/div/p/a[2]').click
        self.browser.find_element(:xpath => '/html/body/div[1]/div[2]/div/div/div[2]/div/div/div[1]/a').click
      end
    end
  end

end
