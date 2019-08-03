Feature: browser automation

Background:
#   * configure driver = { type: 'chrome' }
#   * configure driver = { type: 'chromedriver', port: 9917, executable: 'E:\\intellij2018\\KarateDemo\\src\\test\\java\\driver\\chromedriver.exe', showDriverLog: true }
#  * configure driver = { type: 'geckodriver', showDriverLog: true }
#  * configure driver = { type: 'geckodriver',port: 9915, executable: 'E:\\intellij2018\\KarateDemo\\src\\test\\java\\driver\\geckodriver.exe'}
  # * configure driver = { type: 'safaridriver' }
  # * configure driver = { type: 'mswebdriver' }
 * def weburl = "https://classic.crmpro.com/index.html"


Scenario Outline: Login to CRM with <config>
  * def config = <config>
  * set config.showDriverLog = true
  * configure driver = config

  Given driver weburl
  And driver.maximize()
  And eval driver.waitUntil("document.readyState == 'complete'")
  And  driver.input("//input[@placeholder='Username']", "hello")
  And  driver.input("//input[@placeholder='Password']", "world")
  When driver.submit("//input[@class='btn btn-small']")
  * def bytes = driver.screenshot()
  * eval karate.embed(bytes, 'image/png')
  * print driver.location
  Then match driver.location ==  weburl + '?e=1'
  And driver.close
  And driver.quit




  Examples:

    | config! |
    | { type: 'chromedriver', port: 9917, executable: 'E:\\intellij2018\\KarateDemo\\src\\test\\java\\driver\\chromedriver.exe', showDriverLog: true } |
    | { type: 'geckodriver',port: 9915, executable: 'E:\\intellij2018\\KarateDemo\\src\\test\\java\\driver\\geckodriver.exe'}|


