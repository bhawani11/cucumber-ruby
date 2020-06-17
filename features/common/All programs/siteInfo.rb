require "selenium-webdriver" # load in the webdriver gem to interact with Selenium
driver = Selenium::WebDriver.for :chrome
begin
  driver.get 'https://google.com'
  driver.manage.timeouts.implicit_wait = 20
  driver.manage.window.maximize
  sleep(5)
  driver.find_element(name: 'q').send_keys 'selenium tutorial'
  sleep(5)
  element=driver.find_elements(xpath:"//*")
  puts"total elements are : #{element.size}"
  links=driver.find_elements(xpath:"//a")
  puts"count all element links are : #{links.size}"
  #it is also for total links on page
  links1=driver.find_elements(tag_name:"a")
  puts"count all element links are : #{links1.size}"
end