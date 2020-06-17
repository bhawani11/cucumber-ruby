require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome
# use of explicit wait
wait = Selenium::WebDriver::Wait.new(:timeout => 10)

def document_initialised(driver)
  driver.execute_script('return initialised')
end

begin
  #automate domino site
  driver.get 'https://pizzaonline.dominos.co.in/menu'
  #driver will wait untill locator is not visible
  wait.until { |document_initialised| driver }
  search = driver.find_element(:css, "span[class='rupee']").text
  "Hello from JavaScript!".eql? search
  #implicit wait
  driver.manage.window.maximize

  driver.manage.timeouts.implicit_wait = 10
  i = 1
  for i in 1..20
    price = driver.find_element(:xpath, "(//span[@class='rupee'])[#{i}]").text
    puts "the price of pizza #{i} is " + price
  end
end