class NavPan < CommonScreen

  FEED = {:IOS =>{uiautomation: '.tabBars()[0].buttons()[0]'},
          :ANDROID =>{id: '.1'}}

  DREAMTRIPS = {:IOS =>{uiautomation: '.tabBars()[0].buttons()[1]'},
          :ANDROID =>{id: '.1'}}

  BOOKANDTRAVEL = {:IOS =>{uiautomation: '.tabBars()[0].buttons()[2]'},
          :ANDROID =>{id: '.1'}}

  MORE = {:IOS => {uiautomation: '.tabBars()[0].buttons()[4]'},
                :ANDROID =>{id: '.1'}}

  TRIPIMAGES = {:IOS =>{uiautomation: '.tabBars()[0].buttons()[3]'},
          :ANDROID =>{id: '.1'}}

  #=====MORE screen for Iphone  =======

  BUCKETLIST = {:IOS => {uiautomation: '.tableViews()[0].cells()[0]'}}
  MEMBERSHIPS = {:IOS => {uiautomation: '.tableViews()[0].cells()[1]'}}
  REPTOOLS = {:IOS => {uiautomation: '.tableViews()[0].cells()[2]'}}
  MYPROFILE = {:IOS => {uiautomation: '.tableViews()[0].cells()[3]'}}
  FAQ = {:IOS => {uiautomation: '.tableViews()[0].cells()[4]'}}
  PRIVACY = {:IOS => {uiautomation: '.tableViews()[0].cells()[5]'}}
  TERMS = {:IOS => {uiautomation: '.tableViews()[0].cells()[6]'}}
  COOKIES = {:IOS => {uiautomation: '.tableViews()[0].cells()[7]'}}

  def join_more
    click(MORE)
  end

  def join_bl
    join_more
    click(BUCKETLIST)
  end

  def join_membership
    join_more
    click(MEMBERSHIPS)
  end

  def join_reptools
    join_more
    click(MYPROFILE)
  end

  def join_faq
    join_more
    click(FAQ)
  end

  def join_privacy
    join_more
    click(PRIVACY)
  end

  def join_terms
    join_more
    click(TERMS)
  end

  def join_cookies
    join_more
    click(COOKIES)
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
