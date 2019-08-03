Feature: stateful mock server

Background:
* configure cors = true
* def uuid = function(){ return java.util.UUID.randomUUID() + '' }
# added from https://github.com/intuit/karate/blob/4b3c64f1d7e7bc18f3ee471d0ec56aa58348d8e4/karate-gatling/src/test/scala/mock/mock.feature
* def delay = function(){ java.lang.Thread.sleep(850) }
* def cats = {}

Scenario: pathMatches('/cats') && methodIs('post')
    * def cat = request
    * def id = uuid()
    * cat.id = id
# added from https://github.com/intuit/karate/blob/4b3c64f1d7e7bc18f3ee471d0ec56aa58348d8e4/karate-gatling/src/test/scala/mock/mock.feature	
	* cats[id] = cat
    * def response = cat

Scenario: pathMatches('/cats')
    * def response = $cats.*

Scenario: pathMatches('/cats/{id}')
    * def response = cats[pathParams.id]

Scenario: pathMatches('/cats/{id}') && methodIs('delete')
    * karate.remove('cats', '$.' + pathParams.id)
    * def response = ''
    * def afterScenario = delay

Scenario: pathMatches('/hardcoded')
    * def response = { message: 'Success' }
	
Scenario:
    # catch-all
    * def responseStatus = 404
    * def responseHeaders = { 'Content-Type': 'text/html; charset=utf-8' }
    * def response = <html><body>Not Found</body></html>