require 'rspec'
require_relative 'helper'
require_relative '../screens/common'
require_relative '../screens/login'
require_relative '../screens/dreamtrips'
require_relative '../screens/bucket_list'
require_relative '../screens/nav_pan'

describe 'Bucket List functionality' do

  before(:each) do
    @screen = CommonScreen.new(@driver)
    @login = Login.new(@driver)
    @navpan = NavPan.new(@driver)
    @bucket_list = BucketList.new(@driver)
  end

  # it 'Empty BL checking',:smoke do
  #   @login.login_app
  #   @navpan.join_bl
  #   expect(@screen.is_displayed?(BucketList::BUCKETLISTTITTLE)).to be_truthy
  #   @bucket_list.ui_elements do |ui_element|
  #     expect(@bucket_list.empty_bli_displayed?(ui_element)).to be_truthy
  #   end
  # end

  it 'Add new BL item using top panel',:smoke do
    @login.login_app
    @navpan.join_bl
    # @bucket_list.additem
    @bucket_list.enter_bl_details
  end
end