class LoginPage
  attr_accessor :myAccount, :loginIcon, :txtPassword, :btnLogin

  def initialize(browser)
    @browser = browser
    @myAccount = @browser.element(xpath: "(//a[@class='dropdown-toggle'])[1]")
    @loginIcon = @browser.element(id: "signInBtn")
    @signupIcon = @browser.element(id: "SignUpBtn")
    @emailId = @browser.element(name: "login-input")
    @continueButton = @browser.element(css: "button[class='main-btn mt25']")
    @loginPassword = @browser.element(id: "login-password")
    @loginBtn = @browser.element(id: "login-submit-btn")
  end

  def launch
    @browser.goto "https://www.yatra.com"
  end

  def clickMyAcc()
    @myAccount.click
  end

  def clickLoginIcon()
    sleep(5)
    @loginIcon.click
  end

  def clickSignUpIcon()
    @signupIcon.click
  end

  def enterPhone()
    @emailId.send_keys("9753576779")
  end

  def enterEmail()
    @emailId.send_keys("chouhanbhawani.es@gmail.com")
  end

  def clickContinue()
    @continueButton.click
    sleep(5)
  end

  def enterUsername(username)
    @txtUsername.set username
  end

  def enterPassword(password)
    @txtPassword.set password
  end

  def clickLoginButton
    @btnLogin.click
  end

  def enterPasswordd()
    @loginPassword.send_keys("abcd@12345")
  end

  def clickLoginButtonn()
    @loginBtn.click
    sleep(10)
  end

  def enterPhoneOrEmail(element1)
    # abc=element1
    # @emailId.send_keys(abc)
    @emailId.send_keys(element1)
  end

  def quitBrowser
    sleep(3)
    @browser.driver.quit
  end

end