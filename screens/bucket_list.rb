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


  def ui_elements
    #yield BUCKETLISTTITTLE
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
