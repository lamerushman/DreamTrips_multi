require_relative 'common'

class Dreamtrips<CommonnScreen


  #  ==== Dream Trips screen location id =====
  DTITLE = {:IOS =>{uiautomation: '.navigationBars()[0].images()[1]'},
            :ANDROID => {id:''}}
  SEARCH = {:IOS =>{uiautomation: '.navigationBars()[0].buttons()[2]'},
            :ANDROID => {id:'action_search'}}
  FILTER = {:IOS =>{uiautomation: '.navigationBars()[0].buttons()[3]'}
            :ANDROID => {id:'action_filter'}}
  MAP =    {:IOS =>{uiautomation: '.navigationBars()[0].buttons()[0]'}
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
  REGIONXPND = {:IOS => {uiautomation: '.tableViews()[0].tableCells()[2].staticTexts()[1]'},
                :ANDROID =>{text:'REGION'}}
  REGIONCHECKBOX = {:IOS => {uiautomation: '.tableViews()[0].tableCells()[0].buttons()[0]'},
                    :ANDROID => {id:'checkBoxSelectAllRegion'}}
  THEMEXPND = {:IOS => {uiautomation: '.tableViews()[0].tableCells()[3].staticTexts()[1]'},
               :ANDROID => {text:'THEME'}}
  THEMECHECKBOX = {:IOS => {uiautomation: '.tableViews()[0].tableCells()[3].buttons()[0]'},
                   :ANDROID => {id:'checkBoxSelectAllTheme'}}
  RESETFILTERS = {:IOS => {uiautomation:'.buttons()[0]'},
                  :ANDROID => {id:'textViewResetFilter'}}

#  Filter methods
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

  def search_element_by_name(text)
    click(SEARCH)
    enter(text, SEARCH)

  end

end