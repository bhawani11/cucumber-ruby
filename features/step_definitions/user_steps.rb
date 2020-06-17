Given(/^Launch yatra site$/) do

  @LoginPage = LoginPage.new(@browser)
  @LoginPage.launch
end
When(/^click on MyAccount$/) do
  sleep(5)
  @LoginPage.clickMyAcc
  sleep(5)
end
And(/^user can click on login icon$/) do
  @LoginPage.clickLoginIcon
  sleep(5)
end
And(/^user can click on sign in icon$/) do
  @LoginPage.clickSignUpIcon
end
And(/^user enter userid or mobile number$/) do
  @LoginPage.enterPhone
end
And(/^user enter userid only$/) do
  @LoginPage.enterEmail
end
And(/^user can click on continue$/) do
  @LoginPage.clickContinue
end
And(/^user enter OTP and can click on submit$/) do
  @SignUpPage = SignUpPage.new(@browser)
  @SignUpPage.clicksubmitButton
end
And(/^user can fill emailId$/) do
  @SignUpPage.fillEmailId
end
And(/^user can create own password$/) do
  @SignUpPage.createPassword
end
Then(/^select designation from dropdown$/) do
  @SignUpPage.selectDesignation
end
And(/^enter full name of user$/) do
  @SignUpPage.enterFullName
end
And(/^enter last name of user$/) do
  @SignUpPage.enterLastName
end
And(/^click on create account$/) do
  @SignUpPage.createUserAccount
end
And(/^user enter own password$/) do
  @LoginPage.enterPasswordd
end
And(/^user click on login button$/) do
  @LoginPage.clickLoginButtonn
end
And(/^user hover on profile icon$/) do
  @ProfilePage = ProfilePage.new(@browser)
  @ProfilePage.myProfileIcon
end
And(/^user can click on logout$/) do
  @ProfilePage.clickOnLogOut
end
And("user enter mobile {string} number") do |string|
  @LoginPage.enterPhoneOrEmail(string)
end
And(/^user can close this scenario$/) do
  @LoginPage.quitBrowser
end
