Feature: browser automation

Background:
#   * configure driver = { type: 'chrome' }
   * configure driver = { type: 'chromedriver', port: 9917, executable: 'E:\\intellij2018\\KarateDemo\\src\\test\\java\\driver\\chromedriver.exe', showDriverLog: true }
#  * configure driver = { type: 'geckodriver', showDriverLog: true }
#  * configure driver = { type: 'geckodriver',port: 9915, executable: 'E:\\intellij2018\\KarateDemo\\src\\test\\java\\driver\\geckodriver.exe'}
  # * configure driver = { type: 'safaridriver' }
  # * configure driver = { type: 'mswebdriver' }
 * def weburl = "https://classic.crmpro.com/index.html"


Scenario: Login to CRM


  Given driver weburl
  And driver.maximize()
  And eval driver.waitUntil("document.readyState == 'complete'")
  And driver.input("//input[@placeholder='Username']", "hello")
  And driver.input("//input[@placeholder='Password']", "world")
  When driver.submit("//input[@class='btn btn-small']")
  And eval driver.waitUntil("document.readyState == 'complete'")
#  Then match driver.html('#js-flash-container') contains 'Incorrect username or password.'
  #addded satyank
   * def bytes = driver.screenshot()
  * eval karate.embed(bytes, 'image/png')
  * print driver.location
  Then match driver.location ==  weburl + '?e=12'

  
#  Given driver 'https://google.com'
#  And driver.input("input[name=q]", 'karate dsl')
#  When driver.submit("input[name=btnI]")
#  Then match driver.location == 'https://github.com/intuit/karate'
#
#  * def bytes = driver.screenshot()
#  * eval karate.embed(bytes, 'image/png')
   