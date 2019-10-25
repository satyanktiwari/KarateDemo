Feature: web-browser automation
    for help, see: https://github.com/intuit/karate/wiki/ZIP-Release

    Background:
        * configure driver = { type: 'chrome' }

    Scenario: try to create task


        Given driver 'http://todomvc.com/examples/vanillajs/'
        # Maximise screen 
        # * maximize()
        # wait for an element on page to ensure page has loaded
        # * waitUntil("document.readyState == 'complete'") does not work here
        And waitFor('{a}JavaScript')
        # This stores the footer class info inside element 
        * def element = locate('.info') 
        # assert that the the footer element exists
        * assert element.exists
        # waits for the input text box
        * waitFor('.new-todo')
        # highlight the element
        * highlight('.new-todo')
        # takes screenshot of specified element
        * screenshot('.new-todo')
        # takes screen shot of the visible screen
        * screenshot()
        # find the element and send text 'Test1' to it and hit the tab key to create a new record
        * input('.new-todo','Test1'+ Key.TAB)
        # Wait for the record to be created and displayed
        And waitFor('{}Test1')
        # Not advisable to add delay but in cases of secure javasript is better to add the delay
        * delay(100).screenshot()
        * screenshot('{}Test1')
        # Need to investigate this
        # * def placeholderText = locateAll('{}What needs to be done?]')
        # * assert placeholderText.exists


