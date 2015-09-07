class NavPan < CommonScreen

  FEED = {:IOS =>{uiautomation: '.tabBars()[0].buttons()[0]'},
          :ANDROID =>{id: '.1'}}

  DREAMTRIPS = {:IOS =>{uiautomation: '.tabBars()[0].buttons()[1]'},
          :ANDROID =>{id: '.1'}}

  BOOKANDTRAVEL = {:IOS =>{uiautomation: '.tabBars()[0].buttons()[2]'},
          :ANDROID =>{id: '.1'}}

  BUCKETLIST = {:IOS => {uiautomation: '.tabBars()[0].buttons()[3]'},
                :ANDROID =>{id: '.1'}}

  TRIPIMAGES = {:IOS =>{uiautomation: '.tabBars()[0].buttons()[4]'},
          :ANDROID =>{id: '.1'}}

  def join_bl
    click(BUCKETLIST)
  end

  def join_feed
    click(FEED)
  end

  def join_tripimages
    click(TRIPIMAGES)
  end

  def join_book
    click(BOOKANDTRAVEL)
  end

end
