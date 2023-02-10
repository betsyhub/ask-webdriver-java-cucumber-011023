# Test Automation Exercise - Cucumber
#  ACF-916
#  Author : Betsy George


@quote
Feature: Quote test scenarios

  Background:
    Given I open url "https://skryabin.com/webdriver/html/sample.html"
    Then I should see page title contains "Sample Page"
    Then I resize window to 1920 and 1080

  @quote1
  Scenario: Verify the responsiveness of the application
    Given I open url "https://skryabin.com/webdriver/html/sample.html"
    Then I should see page title contains "Sample Page"
#        Desktop mode
    Then I resize window to 1920 and 1080
    Then element with xpath "//b[@id='location']" should be displayed
    Then element with xpath "//b[@id='location']" should contain text "Los Altos, CA 94022"
#        iphone mode
    Then I resize window to 375 and 667
    Then element with xpath "//b[@id='location']" should not be displayed

  @quote2
  Scenario: verify Username field
    Then element with xpath "//input[@name='username']" should be present
    Then I type "A" into element with xpath "//input[@name='username']"
    Then I click on element using JavaScript with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='username-error']" should contain text "Please enter at least 2 characters."
    Then I clear element with xpath "//input[@name='username']"
    Then element with xpath "//label[@id='username-error']" should have text as "This field is required."
    Then I type "AB" into element with xpath "//input[@name='username']"
    Then I click on element using JavaScript with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='username-error']" should not be displayed


  @quote3
  Scenario: Validate Email field
    Then element with xpath "//input[@name='email']" should be present
    Then I type "test" into element with xpath "//input[@name='email']"
    Then I click on element using JavaScript with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='email-error']" should contain text "Please enter a valid email address."
    Then I clear element with xpath "//input[@name='email']"
    Then element with xpath "//label[@id='email-error']" should have text as "This field is required."
    Then I type "test@mail.com" into element with xpath "//input[@name='email']"
    Then I click on element using JavaScript with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='email-error']" should not be displayed


  @quote4
  Scenario: Validate Password fields
    Then element with xpath "//input[@id='password']" should be present
    Then I type "A" into element with xpath "//input[@id='password']"
    Then I click on element using JavaScript with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='password-error']" should contain text "Please enter at least 5 characters."
    Then I clear element with xpath "//input[@id='password']"
    Then element with xpath "//label[@id='password-error']" should contain text "This field is required."
    Then I type "12345" into element with xpath "//input[@id='password']"
    Then I click on element using JavaScript with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='password-error']" should not be displayed
    Then I clear element with xpath "//input[@id='password']"
    Then element with xpath "//input[@id='confirmPassword' and @disabled]" should be present
    Then I type "12345" into element with xpath "//input[@id='password']"
    Then I type "12" into element with xpath "//input[@id='confirmPassword']"
    Then element with xpath "//label[@id='confirmPassword-error']" should contain text "Please enter at least 5 characters."
    Then I clear element with xpath "//input[@id='confirmPassword']"
    Then element with xpath "//label[@id='confirmPassword-error']" should contain text "This field is required."
    Then I type "12345" into element with xpath "//input[@id='confirmPassword']"
    Then element with xpath "//label[@id='confirmPassword-error']" should not be displayed


  @quote5
  Scenario Outline: Verify Name field
    Then I click on element with xpath "//input[@id='name']"
    Then element with xpath "//input[@id='firstName']" should be displayed
    Then I type "<FirstName>" into element with xpath "//input[@id='firstName']"
    Then element with xpath "//input[@id='middleName']" should be displayed
    Then I type "<MiddleName>" into element with xpath "//input[@id='middleName']"
    Then element with xpath "//input[@id='lastName']" should be displayed
    Then I type "<LastName>" into element with xpath "//input[@id='lastName']"
    Then I click on element with xpath "//span[contains(text(),'Save')]"
    Then I wait for element with xpath "//input[@id='name']" to be present
    Then element with xpath "//input[@id='name']" should have attribute "value" as "<FullName>"

    Examples:
      | FirstName | MiddleName | LastName | FullName          |
      | First     | Middle     | Last     | First Middle Last |
      |           | B          | c        | B C               |


  @quote6
  Scenario: Validate Accepting Privacy Policy field
    Then element with xpath "//input[@name='agreedToPrivacyPolicy']" should be present
    Then element with xpath "//input[@name='agreedToPrivacyPolicy']/following-sibling::span" should contain text "I have read and accept Privacy Policy."
    Then I click on element using JavaScript with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='agreedToPrivacyPolicy-error']" should contain text "- Must check!"
    Then I click on element with xpath "//input[@name='agreedToPrivacyPolicy']"
    Then element with xpath "//label[@id='agreedToPrivacyPolicy-error']" should not be displayed


  @quote7
  Scenario: Verify the non-required fields.

    Then element with xpath "//input[@name='phone']" should be present
    Then I type "4081234455" into element with xpath "//input[@name='phone']"
    Then I click on element with xpath "//option[contains(text(),'Austria')]"
    Then I click on element with xpath "//input[@name='gender' and @value='female']"
    Then I click on element with xpath "//input[@name='allowedToContact']"
    Then I type "102, Test Dr, California" into element with xpath "//textarea[@id='address']"
    Then I click on element with xpath "//option[contains(text(),'Ford')]"
#    Then I click on element with xpath "//button[@id='thirdPartyButton']"
#    Then I click on element with xpath "//input[@id='thirdPartyAgreement']"
#    Then element with xpath "//span[@id='thirdPartyResponseMessage']" should contain text "You accepted third party agreement."
    Then I click on element with xpath "//input[@id='dateOfBirth']"
    Then I click on element with xpath "//select[@class='ui-datepicker-month']"
    Then I click on element with xpath "//option[contains(text(),'Apr')]"
    Then I click on element with xpath "//option[contains(text(),'2000')]"
    Then I click on element with xpath "//a[contains(text(),'20')]"


  @quote8
  Scenario: Verify the data after submit the form.

    Then I type "Betsy" into element with xpath "//input[@name='username']"
    Then I type "test@mail.com" into element with xpath "//input[@name='email']"
    Then I type "12345" into element with xpath "//input[@id='password']"
    Then I type "12345" into element with xpath "//input[@id='confirmPassword']"
    Then I click on element with xpath "//input[@id='name']"
    Then element with xpath "//input[@id='firstName']" should be displayed
    Then I type "First" into element with xpath "//input[@id='firstName']"
    Then element with xpath "//input[@id='middleName']" should be displayed
    Then I type "Middle" into element with xpath "//input[@id='middleName']"
    Then element with xpath "//input[@id='lastName']" should be displayed
    Then I type "Last" into element with xpath "//input[@id='lastName']"
    Then I click on element with xpath "//span[contains(text(),'Save')]"
    Then I click on element with xpath "//input[@name='agreedToPrivacyPolicy']"
    Then I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//b[@name='firstName']" should contain text "First"
    Then element with xpath "//b[@name='middleName']" should contain text "Middle"
    Then element with xpath "//b[@name='lastName']" should contain text "Last"
    Then element with xpath "//b[@name='name']" should contain text "First Middle Last"
    Then element with xpath "//b[@name='username']" should contain text "Betsy"
    Then element with xpath "//b[@name='email']" should contain text "test@mail.com"
    Then element with xpath "//b[@name='password']" should contain text "[entered]"
    Then element with xpath "//b[@name='agreedToPrivacyPolicy']" should contain text "true"






