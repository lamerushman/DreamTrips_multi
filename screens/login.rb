require_relative 'common'
class Login < CommonScreen

  USER_ID = { :IOS => { uiautomation: '.textFields()[0]' },
             :ANDROID => { id: 'et_username'}}
  PASSWORD ={ :IOS => { uiautomation: '.secureTextFields()[0]'},
             :ANDROID =>{id: 'et_password'}}
  CHECKTERMS = { :IOS => { uiautomation: '.buttons()[0]'},
                 :ANDROID => { id: 'checkBoxTerms'}}
  LOGINBTN = { :IOS => { uiautomation: '.buttons()[2]'},
               :ANDROID => {id:'btn_login'}}


  USERS = [
    { usename: '888888', password: 'travel1ns1de' }
  ]


    def login_app
      enter("888888",USER_ID)
      enter("travel1ns1de",PASSWORD)
      click(CHECKTERMS)
      click(LOGINBTN)
    end
  end



