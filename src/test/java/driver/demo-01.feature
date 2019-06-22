Feature: browser automation

Background:
#   * configure driver = { type: 'chrome' }
#   * configure driver = { type: 'chromedriver', showDriverLog: true }
#  * configure driver = { type: 'geckodriver', showDriverLog: true }
  * configure driver = { type: 'geckodriver',port: 9915, executable: 'E:\\intellij2018\\KarateDemo\\src\\test\\java\\driver\\geckodriver.exe'}
  # * configure driver = { type: 'safaridriver' }
  # * configure driver = { type: 'mswebdriver' }

Scenario: try to login to github
    and then do a google search

    Given driver 'https://github.com/login'
  And driver.input('#login_field', 'hello')
  And driver.input('#password', 'world')
  When driver.submit("#login")
#  Then match driver.html('#js-flash-container') contains 'Incorrect username or password.'
  #addded satyank
  * def bytes = driver.screenshot()
  * eval karate.embed(bytes, 'image/png')

  
#  Given driver 'https://google.com'
#  And driver.input("input[name=q]", 'karate dsl')
#  When driver.submit("input[name=btnI]")
#  Then match driver.location == 'https://github.com/intuit/karate'
#
#  * def bytes = driver.screenshot()
#  * eval karate.embed(bytes, 'image/png')
   