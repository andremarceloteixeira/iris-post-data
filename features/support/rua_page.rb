
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
    proxys = {'befreedom.gq' => 'iris',
              'havefann.gq' => 'veronica',
              'usinternet.gq'=> 'stella',
              'unsiteme.gq'=> 'iris',
              'unoblock.gq'=> 'veronica',
              'dontblock.gq'=> 'stella',
              'noblocky.gq'=> 'iris',
              'nonoproxy.gq'=> 'veronica',
              'maloxy.gq'=> 'stella'
    };



  end

end
