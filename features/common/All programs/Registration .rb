# load in the webdriver gem to interact with Selenium
require 'selenium-webdriver'
#Run Chrome driver.exe to get chrome browser
driver = Selenium::WebDriver.for :chrome
# use of explicit wait
wait = Selenium::WebDriver::Wait.new(:timeout => 10)

def document_initialised(driver)
  driver.execute_script('return initialised')
end

begin
  driver.get 'http://automationpractice.com/'
  #driver will wait untill locator is not visible
  wait.until { |document_initialised| driver }
  search_form = driver.find_element(:css, "a[class='login']").text
  "Hello from JavaScript!".eql? search_form
  #implicit wait
  driver.manage.window.maximize
  driver.manage.timeouts.implicit_wait = 10
  driver.find_element(:css, "a[class='login']").click
  driver.find_element(:css, "input[name='email_create']").send_keys("bsingh23@gmail.com")
  driver.find_element(:css, "button[id='SubmitCreate']").click
  driver.find_element(:name, "id_gender").click
  driver.find_element(:id, "customer_firstname").send_keys("bhawani s")
  driver.find_element(:id, "customer_lastname").send_keys("rajpoot")
  driver.find_element(:id, "email").send_keys("")
  driver.find_element(:id, "passwd").send_keys("123456")
  driver.find_element(:css, "select[id='days']").click
  driver.find_element(:css, "select[id='days']").send_keys("15")
  driver.find_element(:css, "select[id='months']").click
  driver.find_element(:css, "select[id='months']").send_keys("march")
  driver.find_element(:css, "select[id='years']").click
  driver.find_element(:css, "select[id='years']").send_keys("1990")
  driver.find_element(:id, "newsletter").click
  driver.find_element(:id, "firstname").send_keys("")
  driver.find_element(:id, "lastname").send_keys("")
  driver.find_element(:id, "company").send_keys("EminenceSquareI")
  driver.find_element(:name, "address1").send_keys("Scheme number 78")
  driver.find_element(:name, "address2").send_keys("Vijay nagar 78")
  driver.find_element(:id, "city").send_keys("hyderabad")
  driver.find_element(:css, "select[id='id_state']").click
  driver.find_element(:css, "select[id='id_state']").send_keys("indiana")
  driver.find_element(:id, "postcode").send_keys("00002")
  driver.find_element(:css, "select[id='id_country']").click
  driver.find_element(:css, "select[id='id_country']").send_keys("united states")
  driver.find_element(:id, "other").send_keys("hello i am here")
  driver.find_element(:id, "phone").send_keys("90987654321")
  driver.find_element(:name, "phone_mobile").send_keys("98907654321")
  driver.find_element(:id, "alias").send_keys("L.I.G")
  driver.find_element(:xpath, "//button[@name='submitAccount']").click
  # Check that the checkbox exists
   elementb = wait.until {
    element = driver.find_element(:xpath, "//span[contains(text(),'Order history and details')]")
    element if element.displayed?
  }
  puts "Test Passed: The element is displayed/exists"
  elementb.click
  sleep(5)
end