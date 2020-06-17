class ProfilePage
  attr_accessor :myProfile, :logOut, :txtPassword, :btnLogin

  def initialize(browser)
    @browser = browser
    @myProfile = @browser.element(css: "a[class='dropdown-toggle loginUserName']")
    @logOut = @browser.element(xpath: "//a[@id='logOut']")
  end

  def myProfileIcon()
    profile = @browser.driver.find_element(:css, "a[class='dropdown-toggle loginUserName']")
    sleep(3)
    @browser.driver.action.move_to(profile).perform

  end

  def clickOnLogOut()
    sleep(5)
    @logOut.click
    sleep(5)
  end

end
