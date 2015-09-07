require_relative 'common'


class Dreamtrips<CommonScreen


  #  ==== Dream Trips screen location id =====
  DTITLE = {:IOS =>{uiautomation: '.navigationBars()[0].images()[1]'},
            :ANDROID => {id:''}}
  SEARCH = {:IOS =>{uiautomation: '.navigationBars()[0].buttons()[2]'},
            :ANDROID => {id:'action_search'}}
  FILTER = {:IOS =>{uiautomation: '.navigationBars()[0].buttons()[3]'},
            :ANDROID => {id:'action_filter'}}
  MAP =    {:IOS =>{uiautomation: '.navigationBars()[0].buttons()[0]'},
            :ANDROID => {id:'action_map'}}
  EMTYPAGETEXT =  {:IOS =>{},
                   :ANDROID =>{text:'Sorry, there were no results matching your criteria'}}
  #EMTYPAGERESET = {}
  #TRIPCELL = {:ANDROID =>{id:}}

  # ===    FILTER CONTROLS  ===
  CANCELBTN = { :IOS =>{uiautomation: '.toolbars()[0].buttons()[0]'},
                :ANDROID => {id:''}}
  APPLYBTN = {:IOS => {uiautomation: '.toolbars()[0].buttons()[1]'},
              :ANDROID =>{id:'textViewApplyFilter'}}
  #ask guys DURATION & PRICE
  #ask guys DATE START & DATE END
  REGIONXPND = {:IOS => {uiautomation: '.tableViews()[0].сells()[2].staticTexts()[1]'},
                :ANDROID =>{text:'REGION'}}
  REGIONCHECKBOX = {:IOS => {uiautomation: '.tableViews()[0].cells()[2].buttons()[0]'},
                    :ANDROID => {id:'checkBoxSelectAllRegion'}}
  THEMEXPND = {:IOS => {uiautomation: '.tableViews()[0].сells()[3].staticTexts()[1]'},
               :ANDROID => {text:'THEME'}}
  THEMECHECKBOX = {:IOS => {uiautomation: '.tableViews()[0].сells()[3].buttons()[0]'},
                   :ANDROID => {id:'checkBoxSelectAllTheme'}}
  RESETFILTERS = {:IOS => {uiautomation:'.buttons()[0]'},
                  :ANDROID => {id:'textViewResetFilter'}}

# Trip Cell
  TRIPCELL = {:IOS =>{uiautomation: '.collectionViews()[0].сells()[0]'}}
   #            :ANDROID => {}}
  LIKETRIPICON = {:IOS => {uiautomation: '.collectionViews()[0].сells()[0].buttons()[1]'}}
   #               {:ANDROID => {}}
  TRIPDATES = {:IOS =>{uiautomation: '.collectionViews()[0].сells()[0].staticTexts()[0]'}}
   #           :ANDROID => {}}
  TRIPPOINTS = {:IOS =>{uiautomation: '.collectionViews()[0].сells()[0].staticTexts()[1]'}}
   #           :ANDROID => {}}
  TRIPPRICE = {:IOS =>{uiautomation: '.collectionViews()[0].cells()[0].staticTexts()[3]'}}
   #           :ANDROID => {}}
  TRIPTITTLE = {:IOS =>{uiautomation: '.collectionViews()[0].cells()[0].staticTexts()[2]'}}
   #           :ANDROID => {}}
  TRIPLOCATION = {:IOS =>{uiautomation: '.collectionViews()[0].cells()[0].staticTexts()[4]'}}
  #            :ANDROID => {}}
  TRIPBUCKET = {:IOS => {uiautomation: '.collectionViews()[0].cells()[0].buttons()[0]'}}





#  Filter methods

  def open_filter
    click(FILTER)
  end

  def uncheck_region
    click(REGIONCHECKBOX)
    click(APPLYBTN)
  end

  def uncheck_themes
    click(THEMECHECKBOX)
    click(APPLYBTN)
  end

  def reset_filters
    click(RESETFILTERS)
  end

  def apply_filters
    click(APPLYBTN)
  end

  def is_reset_text_displayed
  find_element()
  end


# Dreamtrips screen main methods

  TRIPTEXT1 = {"title"=>"The Hidden Gem of Cyprus",
              "location"=>"Polis,Pafos,Cyprus",
              "price"=>"819.00",
              "points"=>"500",
              "date"=>"Sep 18-22, 2015"}

  def triptexteq(key)
    TRIPTEXT1[key]
  end

  def search_element_by_name(text)
    click(SEARCH)
    enter(text, SEARCH)

  end
  def go_tripdetails
    click(TRIPCELL)
  end


  def check_trip_value(locator)
      get_value(locator)
  end

end