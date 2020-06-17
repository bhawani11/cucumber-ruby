require 'selenium-webdriver'
# load in the Assertion gem to interact with selenium
require "test/unit/assertions"
include Test::Unit::Assertions

driver = Selenium::WebDriver.for :chrome
# driver = Selenium::WebDriver.for :Chrome.driver_path="C:\Ruby26-x64\bin\chromedriver.exe"
wait = Selenium::WebDriver::Wait.new(:timeout => 10)
def document_initialised(driver)
  driver.execute_script('return initialised')
end

begin
puts"enter the name full name"
name=gets.chomp
#Navigate to URl
driver.get "https://www.hq.com/"

wait.until{|document_initialised| driver}
search = driver.find_element(:xpath,"//button[text()='Contact']").text
"Hello from JavaScript!".eql? search

driver.manage.window.maximize

driver.manage.timeouts.implicit_wait = 10
driver.find_element(:xpath,"//button[text()='Contact']").click
driver.find_element(:xpath,"//input[@name='fullName1']").send_keys(name)
driver.find_element(:xpath,"//input[@name='emailAddress']").send_keys"Manisha4858@gmail.com"
driver.find_element(:xpath,"(//select[@class='city-select'])[1]").click
driver.find_element(:xpath,"(//select[@class='city-select'])[1]").send_keys"burnaby"
driver.find_element(:xpath,"//input[@class='country_phone']").send_keys"9034455664"
driver.find_element(:xpath,"//textarea[@name='comment']").send_keys"this  is a ruby section "
#code for click on submit
driver.action.key_down(:shift).send_keys(:arrow_down).perform
elem=driver.find_element(:xpath,"(//div[@class='col col-fixed col-sm-12'])/child::*[1]")
driver.action.move_to(elem).perform
elem.submit
  confirmationText=driver.find_element(:xpath,"//div[@class='col col-md-12']").text
puts"#{confirmationText}"
end
