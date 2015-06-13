require_relative 'common'
class Login < CommonScreen

  USER_ID = { :IOS => { uiautomation: '.textFields()[0]' }}
             #:ANDROID = { :id, com.worldventures.dreamtrips.stage.debug:id/et_username}}
  PASSWORD ={ :IOS => { uiautomation: '.secureTextFields()[0]'}}
             #:ANDROID ={:id, com.worldventures.dreamtrips.stage.debug:id/et_username}}
  CHECKTERMS = { :IOS => { uiautomation: '.buttons()[0]'}}
  LOGINBTN = { :IOS => { uiautomation: '.buttons()[2]'}}

  USERS = [
    { usename: '888888', password: 'travel1ns1de' }
  ]


    def login_app(user)
      enter(user[:username],USER_ID)
      enter(user[:password],PASSWORD)
      click(CHECKTERMS)
      click(LOGINBTN)
    end
  end



