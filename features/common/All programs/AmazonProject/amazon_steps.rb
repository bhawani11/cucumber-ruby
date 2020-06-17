# @Before setup

# end
Given(/^Launch amazon site$/) do
  @SearchPage = SearchPage.new(@browser)
  @SearchPage.launch
end
When(/^enter on search bar$/) do
  @SearchPage.enterSearchBar
end
And(/^click on search button$/)do
  @SearchPage.clickSearchButton
end
And(/^user can click on selected item$/) do
  @SearchPage.clickItemWatch
  sleep(3)
end
When("enter {string} on search bar") do |string|
  @SearchPage.enterSearchWord(string)
end
And(/^user can switch to window$/) do
  #browser = page.driver.browser
  @SearchPage.switchwindow
  #sleep(3)
  #@browser.switch.default_content
end
And(/^user can click on add cart$/) do
  @SearchPage.clickAddCart
end
And(/^user can click on proceed item$/) do
  @SearchPage.clickProceedBuy
end
And(/^user can enter an phone number$/) do
  @SearchPage.clickPhoneNumber
end
And(/^user can click on continue button$/) do
  @SearchPage.clickContinueButton
end
And(/^user can click on back icon$/) do
  @SearchPage.clickBackIcon
end
And(/^user can click on my cart$/) do
  @SearchPage.clickMyCart
end
And(/^user can click on delete item$/) do
  @SearchPage.clickDeleteItem
end
And(/^user can close these scenario$/) do
  @SearchPage.quitBrowser
end
And("user can click on delete {string} item") do |string1|
  @SearchPage.itemDelete(string1)
end
