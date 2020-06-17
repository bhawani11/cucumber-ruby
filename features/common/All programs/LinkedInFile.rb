require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome
# use of explicit wait
wait = Selenium::WebDriver::Wait.new(:timeout => 10)
def document_initialised(driver)
  driver.execute_script('return initialised')
end
begin
  #automate linked in site
  driver.get 'https://www.linkedin.com/'
  #driver will wait untill locator is not visible
  wait.until{|document_initialised| driver}
  search = driver.find_element(:css,"a[class='nav__button-secondary']").text
  "Hello from JavaScript!".eql? search
  #implicit wait
  driver.manage.timeouts.implicit_wait = 10
  driver.manage.window.maximize
  driver.find_element(:css,"a[class='nav__button-secondary']").click
  driver.find_element(:id,"username").send_keys("bhawanirajputss@gmail.com")
  driver.find_element(:id,"password").send_keys("abcd@12345")
  driver.find_element(:xpath,"//button[contains(text(),'Sign in')]").click
  #driver will wait after clicking sign in
  wait.until{|document_initialised| driver}
  search1 = driver.find_element(:xpath,"//button[@data-control-name='share.sharebox_focus']").text
  "Hello from JavaScript!".eql? search1

  driver.find_element(:xpath,"//button[@data-control-name='share.sharebox_focus']").click
  driver.find_element(:xpath,"//div[@aria-placeholder='What do you want to talk about?']").send_keys("Hi connections");
  # for post line
  # driver.find_element(:xpath,"(//input[@placeholder='Search job titles or companies'])[2]").send_keys("QA engineer")
  # driver.find_element(:xpath,"(//button[@class='search__button pill pill--blue etta-pill'])[2]").click
  end