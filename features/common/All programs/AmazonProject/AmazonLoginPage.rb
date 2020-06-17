
class SearchPage
  attr_accessor :myAccount,:loginIcon,:txtPassword,:btnLogin

  def initialize(browser)
    @browser = browser
    #twotabsearchtextbox
    @searchBar    = @browser.element(id:"twotabsearchtextbox")
    @searchButton = @browser.element(xpath:"//input[@value='Go']")
    @itemWatch = @browser.element(xpath:"(//img[@class='s-image'])[1]")
    @addCart = @browser.element(css:"input[name='submit.add-to-cart']")
    #@addCart = @browser.element(xpath:"//span[text()='Add to Cart']")
    @proceedBuy = @browser.element(xpath:"(//span[@class='a-button-inner'])[2]")
    @phoneNumber= @browser.element(xpath:"//input[@name='email']")
    @continueButton= @browser.element(xpath:"//input[@class='a-button-input']")
    @myCart= @browser.element(xpath:"//a[@class='nav-a nav-a-2']/child::*[2]")
    @deleteItem= @browser.element(xpath:"(//input[@value='Delete'])[1]")
    # @browser.text_field(:id =&gt; "password")
    # @btnLogin      = @browser.element(:id =&gt; "log_in_button")

  end
  def launch
    @browser.goto "https://www.amazon.in"
  end
  def enterSearchBar()
    @searchBar.send_keys("watches for women")
  end
  def enterSearchWord(xys)
    @searchBar.send_keys(xys)
  end
  def clickSearchButton()
    @searchButton.click
  end
  def clickItemWatch()
    @itemWatch.click
  end
  def switchwindow()
    all_windows = @browser.driver.window_handles
    @browser.driver.switch_to.window(all_windows.last)
    sleep(3)
  end
  def clickAddCart()
    @addCart.click
  end
  def clickProceedBuy()
    @proceedBuy.click
  end
  def clickPhoneNumber()
    @phoneNumber.send_keys("8770072279")
  end
  def clickContinueButton()
    @continueButton.click
  end
  def clickBackIcon()
    @browser.driver.navigate.back
    sleep(2)
    @browser.driver.navigate.back
  end
  def clickMyCart()
    @myCart.click
    sleep(3)
  end
  def clickDeleteItem()
    @deleteItem.click
  end
  def itemDelete(element1)

    @deleteItem1= @browser.driver.find_element(:xpath,"(//input[@value='Delete'])[#{element1}]")
    @deleteItem1.click
  end
  def quitBrowser()
    @browser.driver.quit
  end
end