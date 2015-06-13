require_relative 'common'

class Dreamtrips<CommonnScreen

  DTITLE = { :IOS =>{uiautomation: '.navigationBars()[0]/images()[1]'}}
  #:ANDROID => {id:}}
  SEARCH = {:IOS =>{uiautomation: '.navigationBars()[0]/buttons()[2]'}}
  FILTER = {:IOS =>{uiautomation: '.navigationBars()[0]/buttons()[3]'}}
  MAP = {:IOS =>{uiautomation: '.navigationBars()[0]/buttons()[0]'}}


  def search_element_by_name(text)
    click(SEARCH)
    enter(text, SEARCH)
    find
  end

end