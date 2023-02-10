# Test Automation Exercise - Cucumber
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
      |           | B          | c        |  B C               |


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



  @quote8
  Scenario: Verify the data after submit the form.


