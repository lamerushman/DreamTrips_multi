require_relative 'helper'
require_relative '../screens/common'
require_relative '../screens/login'
require_relative '../screens/dreamtrips'

describe 'Dreamtripscheckfilter' do

  before(:each) do
    @screen = CommonScreen.new(@driver)
    @login = Login.new(@driver)
    @dreamtrips = Dreamtrips.new(@driver)
  end

  it '- Login to app', :smoke do

    @login.login_app
  end

  it '- Set regions off and apply', :smoke do
    @dreamtrips.click(FILTER)
    uncheck_themes
    apply_filters
  end
end
