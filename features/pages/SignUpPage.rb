class SignUpPage
  attr_accessor :emailIdd, :createPass, :designation, :btnLogin

  def initialize(browser)
    @browser = browser
    @myAccount = @browser.element(xpath: "(//a[@class='dropdown-toggle'])[1]")
    @loginIcon = @browser.element(id: "signInBtn")
    @emailIdd = @browser.element(id: "signup-email-id")
    @createPass = @browser.element(id: "signup-password")
    @fullName = @browser.element(css: "input[placeholder='First Name']")
    @lastName = @browser.element(css: "input[placeholder='Last Name']")
    @createAccountBtn = @browser.element(id: "signup-form-continue-btn")
    @submitButton = @browser.element(id: "verify-otp")
  end

  def fillEmailId()
    @emailIdd.send_keys("chouhanbhawani.es@gmail.com")
  end

  def createPassword()
    @createPass.send_keys("abcd@12345")
  end

  def selectDesignation()

    dropdown = @browser.driver.find_element(id: "signup-user-designation")
    select_list = Selenium::WebDriver::Support::Select.new(dropdown)
    select_list.select_by(:text, 'Mr.')

    selected_option = select_list.selected_options[0].text

    # expect(selected_option).to eql 'Mr.'
  end

  def clicksubmitButton()
    sleep(10)
    @submitButton.click
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

  def enterFullName
    @fullName.send_keys("Bhawani")
  end

  def enterLastName
    @lastName.send_keys("singh")
  end

  def createUserAccount
    sleep(5)
    @createAccountBtn.click
    sleep(15)
  end

end