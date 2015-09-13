require_relative 'common'

class Login < CommonScreen


  USER_ID = {:IOS => {uiautomation: '.textFields()[0]'}, #
             :ANDROID => {id: 'et_username'}}
  PASSWORD ={:IOS => {uiautomation: '.secureTextFields()[0]'},
             :ANDROID => {id: 'et_password'}}
  CHECKTERMS = {:IOS => {uiautomation: '.buttons()[0]'},
                :ANDROID => {id: 'checkBoxTerms'}}
  LOGINBTN = {:IOS => {uiautomation: '.buttons()[2]'},
              :ANDROID => {id: 'btn_login'}}

  USERS = [
      {usename: '888888', password: 'travel1ns1de'}
  ]

  def initialize(*attrs)
    super
    @login_attemps_count = 0
  end

    def login_app
      enter("64909941", USER_ID)
      enter("64909941", PASSWORD)
      click(CHECKTERMS)
      click(LOGINBTN)
    end
  #
  # def login_app
  #   begin
  #     do_login
  #     @login_attemps_count = @login_attemps_count + 1
  #   # rescue Selenium::WebDriver::Error::NoSuchElementError
  #   rescue Exception => e
  #     p e.message
  #     if @login_attemps_count < 3
  #       do_login
  #     else
  #       throw "unable to login"
  #     end
  #   end
  # end
  #
  # def do_login
  #   if @login_attemps_count == 0
  #     enter("64909941", USER_ID)
  #     enter("64909941", PASSWORD)
  #     click(CHECKTERMS)
  #   end
  #   click(LOGINBTN)
  #   @login_attemps_count += 1
  #   find(Dreamtrips::DTITLE)
  #
  # end

  def accept_alert
    first_button.click
  end
end



