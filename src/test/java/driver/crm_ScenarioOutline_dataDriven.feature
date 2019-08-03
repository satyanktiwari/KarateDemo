Feature: browser automation

Background:
#   * configure driver = { type: 'chrome' }
   * configure driver = { type: 'chromedriver', executable: 'E:\\intellij2018\\KarateDemo\\src\\test\\java\\driver\\chromedriver.exe', showDriverLog: true }
#  * configure driver = { type: 'geckodriver', showDriverLog: true }
  * configure driver = { type: 'geckodriver', executable: 'E:\\intellij2018\\KarateDemo\\src\\test\\java\\driver\\geckodriver.exe'}
  # * configure driver = { type: 'safaridriver' },port: 9915, port: 9917
  # * configure driver = { type: 'mswebdriver' }
 * def weburl = "https://classic.crmpro.com/index.html"


Scenario Outline: Login to CRM with <Username>
  * def temp = '<Username>'
#  * match temp == Username
  * def temp2 = '<Password>'

  Given driver weburl
  And driver.maximize()
  And eval driver.waitUntil("document.readyState == 'complete'")
  And  driver.input("//input[@placeholder='Username']", temp)
  And  driver.input("//input[@placeholder='Password']", temp2)
  When driver.submit("//input[@class='btn btn-small']")
  * def bytes = driver.screenshot()
  * eval karate.embed(bytes, 'image/png')
  * print driver.location
  Then match driver.location ==  weburl + '?e=1'
  And driver.close
  And driver.quit




  Examples:
    |read('crm_creds_negative.csv')|



