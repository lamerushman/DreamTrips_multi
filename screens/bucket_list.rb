require 'appium_lib'
require 'rubygems'

class BucketList < CommonScreen


  BUCKETLISTTITTLE = {:IOS => {uiautomation: '.navigationBars()[0].staticTexts()[0]'}}

  NOITEMSTEXT = {:IOS => {uiautomation: '.staticTexts()[0]'},
                 :ANDROID => {id: '.1'}}
  ADDITEMTEXT = {:IOS => {uiautomation: '.staticTexts()[1]'},
                 :ANDROID => {id: '.1'}}
  ADDITEMARROW = {:IOS => {uiautomation: '.images()[0]'},
                  :ANDROID => {id: '.1'}}
  ADDBLIEMPTY = {:IOS => {uiautomation: '.buttons()[0]'},
                 :ANDROID => {id: '.1'}}
  ADDBLIPOPEMPTY = {:IOS => {uiautomation: '.buttons()[1]'},
                    :ANDROID => {id: '.1'}}
  ADDBLITOP = {:IOS => {uiautomation: '.navigationBars()[0].buttons()[1]'},
               :ANDROID => {id: '.1'}}
  ADDBLIPOPTOP = {:IOS => {uiautomation: '.navigationBars()[0].buttons()[2]'},
                  :ANDROID => {id: '.1'}}
  FILTER = {:IOS => {uiautomation: '.navigationBars()[0].buttons()[3]'},
            :ANDROID => {id: '.1'}}
  TABS = {:IOS => {uiautomation: '.scrollView()[1]'}}

  BLTITLEADD = {:IOS => {uiautomation: '.textFields()[0]'},
                :ANDROID => {id: '.1'}}
  CREATEBLDONE = {:IOS => {uiautomation: '.navigationBars()[0].buttons()[2]'},
                  :ANDROID => {id: '.1'}}
  CREATEBLCLOSE = {:IOS => {uiautomation: '.navigationBars()[0].buttons()[1]'},
                  :ANDROID => {id: '.1'}}

  #BL LIST NAVIGATION

  # self.cells = [
  #     {:IOS =>{uiautomation: '.collectionViews()[0].collectionCells[0]'},
  #          :ANDROID =>{id: '.1'}},
  #     {:IOS =>{uiautomation: '.collectionViews()[0].collectionCells[1]'},
  #          :ANDROID =>{id: '.1'}}
  # ]

  # Navigate between tabs of BL on IPHONE, could be different on different devices


  def tap_activities_ios
    @driver.execute_script 'mobile: tap', :x => 150, :y => 64
  end

  def tap_locations_ios
    @driver.execute_script 'mobile: tap', :x => 0, :y => 64
  end

  def tap_dining_ios
    @driver.execute_script 'mobile: tap', :x => 276, :y => 64
  end

  def additem
    click(ADDBLIPOPTOP)
    enter("additem_defaultmethod", BLTITLEADD)
    click(CREATEBLDONE)
    click(CREATEBLCLOSE)
  end

  def check_bl_presence(number)
    text_include?("additem_defaultmethod",bl_cell_getter(number))
  end

  def enter_bl_details(number)
    click(bl_cell_getter(number))
  end

  def bl_cell_getter(number)
    cell = { :IOS => { uiautomation: ".collectionViews()[0].cells()[#{number}]."} }
  end




  def ui_elements
    yield NOITEMSTEXT
    yield ADDITEMTEXT
    yield ADDITEMARROW
    yield ADDBLIEMPTY
    yield ADDBLIPOPEMPTY
  end

  def empty_bli_displayed?(ui_element)
    is_displayed? ui_element
  end

  def bli_from_empty
    click(ADDBLIEMPTY)
    send
  end

end
