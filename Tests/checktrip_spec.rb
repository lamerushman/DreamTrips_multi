require 'rspec'
require_relative 'helper'
require_relative '../screens/common'
require_relative '../screens/login'
require_relative '../screens/dreamtrips'

describe 'Check Test Trips' do

  before(:each) do
    @screen = CommonScreen.new(@driver)
    @login = Login.new(@driver)
    @dreamtrips = Dreamtrips.new(@driver)
  end

  it 'Check trip on main page' do

    @login.login_app
    expect(@dreamtrips.check_trip_value(Dreamtrips::TRIPTITTLE)).to eq(@dreamtrips.triptexteq("title"))
    expect(@dreamtrips.check_trip_value(Dreamtrips::TRIPLOCATION)).to eq(@dreamtrips.triptexteq("location"))
    expect(@dreamtrips.check_trip_value(Dreamtrips::TRIPPRICE)).to eq(@dreamtrips.triptexteq("price"))
  end
end



