
class TripDetails< CommonScreen

#pictures
TRIPPICTURE1 = {:IOS =>{uiautomation: '.tableViews()[0].collectionViews()[0].cells()[0].images()[0]'}}

TRIPPICTURE2 = {:IOS =>{uiautomation: '.tableViews()[0].collectionViews()[0].cells()[0].images()[1]'}}

TRIPPICTURE3 = {:IOS =>{uiautomation: '.tableViews()[0].collectionViews()[0].cells()[0].images()[2]'}}

TRIPPICTURE4 = {:IOS =>{uiautomation: '.tableViews()[0].collectionViews()[0].cells()[0].images()[3]'}}

# bages and buttons
SOLDOUTBAGE = {:IOS => {uiautomation: '.tableViews()[0].images()[0]'}}

ADDTOBL = {:IOS => {uiautomation: '.tableViews()[0].buttons()[0]'}}

ADDTOFAV = {:IOS => {uiautomation: '.tableViews()[0].buttons()[1]'}}

BOOKITBUTTON = {:IOS => {uiautomation: '.tableViews()[0].buttons()[2]'}}

POINTSICON = {:IOS => {uiautomation: '.tableViews()[0].images()[1]'}}

POINTS = {:IOS => {uiautomation: '.tableViews()[0].staticTexts()[1]'}}

SLIDER0 = {:IOS => {uiautomation: '.tableViews()[0].pageIndicators()[0]'}}

#trip tittles and descriptions
TRIPTITTLE = {:IOS => {uiautomation: '.tableViews()[0].staticTexts()[2]'}}

TRIPPRICE = {:IOS => {uiautomation: '.tableViews()[0].staticTexts()[3]'}}

TRIPLOCATION = {:IOS => { uiautomation: '.tableViews()[0].staticTexts()[4]'}}

TRIPDATES = {:IOS => {uiautomation: '.tableViews()[0].staticTexts()[5]'}}

TRIPDURATION = {:IOS => {uiautomation: '.tableViews()[0].staticTexts()[6]'}}

SDESCTITLE = {:IOS => {uiautomation: '.tableViews()[0].cells()[0].staticTexts()[0]'}}

  SDECTEXT = {:IOS => {uiautomation:'.tableViews()[0].cells()[0].textViews()[0]' }}

  LDESTITTLE = {:IOS =>{uiautomation: '.tableViews()[0].cells()[1].staticTexts()[0]'}}

  LDESTEXT = {:IOS => {uiautomation: '.tableViews()[0].cells()[1].textViews()[0]'}}

  #ADD OTHER FIELDS WHEN WE WILL HAVE TEST TRIPS

#SCREEN CLASSES

  def scroll_image
   find(SLIDER0).click
  end







end