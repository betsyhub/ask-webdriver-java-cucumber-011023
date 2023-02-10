@predefined
Feature: Smoke steps

  @predefined1
  Scenario: Predefined steps for Google
    Given I open url "https://google.com"
    Then I should see page title as "Google"
    Then element with xpath "//input[@name='q']" should be present
    Then I type "Behavior Driven Development" into element with xpath "//input[@name='q']"
    Then I click on element using JavaScript with xpath "(//input[@name='btnK'])[1]"
    Then I wait for element with xpath "//*[@id='res']" to be present
    Then element with xpath "//*[@id='res']" should contain text "Cucumber"

  @predefined2
  Scenario: Predefined steps for Gibiru
    Given I open url "https://gibiru.com"
    Then I should see page title contains "Gibiru"
    Then element with xpath "//input[@id='q']" should be present
    Then I type "Chocolate" into element with xpath "//input[@id='q']"
    Then I click on element using JavaScript with xpath "//i[@class='fas fa-search new']"
    Then I should see page title contains "Gibiru - Results"
    Then I wait for element with xpath "//div[@id='web-results']" to be present
    Then element with xpath "//div[@id='web-results']" should contain text "Chocolate"

  @predefined3
  Scenario: Predefined steps for DuckDuckGo
    Given I open url "https://duckduckgo.com"
    Then I should see page title contains "DuckDuckGo"
    Then element with xpath "//input[@id='search_form_input_homepage']" should be present
    Then I type "Chocolate" into element with xpath "//input[@id='search_form_input_homepage']"
    Then I click on element using JavaScript with xpath "//input[@id='search_button_homepage']"
    Then I wait for element with xpath "//div[@class='results--main']" to be present
    Then element with xpath "//div[@class='results--main']" should contain text "Chocolate"

  @predefined4
  Scenario: Predefined steps for swisscows
    Given I open url "https://swisscows.com"
    Then I should see page title contains "Swisscows"
    Then element with xpath "//input[@class='input-search']" should be present
    Then I type "Chocolate" into element with xpath "//input[@class='input-search']"
    Then I click on element using JavaScript with xpath "//button[@class='search-submit']"
    Then I wait for element with xpath "//div[@class='web-results']" to be present
    Then element with xpath "//div[@class='web-results']" should contain text "Chocolate"

  @predefined5
  Scenario: Predefined steps for searchencrypt
    Given I open url "https://www.searchencrypt.com"
    Then I should see page title contains "Search Encrypt"
    Then element with xpath "//input[@name='q']" should be present
    Then I type "Chocolate" into element with xpath "//input[@name='q']"
    Then I click on element using JavaScript with xpath "//button[@class='search-bar__submit']"
    Then I wait for 10 sec
    Then I wait for element with xpath "//section[@class='serp__results container']" to be present
    Then element with xpath "//section[@class='serp__results container']" should contain text "Chocolate"

  @predefined6
  Scenario: Predefined steps for Startpage
    Given I open url "https://www.startpage.com"
    Then I should see page title contains "Startpage"
    Then element with xpath "//input[@id='q']" should be present
    Then I type "Chocolate" into element with xpath "//input[@id='q']"
    Then I click on element using JavaScript with xpath "(//button[@id='search-btn'])[1]"
    Then I wait for element with xpath "//div[@class='layout-web__mainline']" to be present
    Then element with xpath "//div[@class='layout-web__mainline']" should contain text "Chocolate"

  @predefined7
  Scenario: Predefined steps for Yandex
    Given I open url "https://www.yandex.com"
    Then I should see page title contains "Yandex"
    Then element with xpath "//input[@id='text']" should be present
    Then I type "Chocolate" into element with xpath "//input[@id='text']"
    Then I click on element using JavaScript with xpath "//span[@class='button__text']"
#              Captcha
    Then I wait for element with xpath "//div[@class='main__content']" to be present
    Then element with xpath "//div[@class='main__content']" should contain text "Chocolate"

  @predefined8
  Scenario: Predefined steps for Ecosia
    Given I open url "https://www.ecosia.org"
    Then I should see page title contains "Ecosia"
    Then element with xpath "//input[@name='q']" should be present
    Then I type "Chocolate" into element with xpath "//input[@name='q']"
    Then I click on element using JavaScript with xpath "//button[@data-test-id='search-form-submit']"
    Then I wait for element with xpath "//section[@class='mainline web__mainline']" to be present
    Then element with xpath "//section[@class='mainline web__mainline']" should contain text "Chocolate"

  @predefined9
  Scenario: Predefined steps for wiki
    Given I open url "https://www.wiki.com/"
    Then I should see page title contains "Wiki.com"
    Then element with xpath "//input[@name='q']" should be present
    Then I type "Chocolate" into element with xpath "//input[@name='q']"
    Then I click on element using JavaScript with xpath "//input[@name='btnG']"
    Then I click on element using JavaScript with xpath "//button[@id='proceed-button']"
#                  Not working
    Then I wait for 20 sec
    Then I wait for element with xpath "//div[@id='inner-sbox']" to be present
    Then element with xpath "//div[@id='inner-sbox']" should contain text "Chocolate"

  @predefined10
  Scenario: Predefined steps for giveWater
    Given I open url "https://www.givewater.com/"
    Then I should see page title contains "giveWater Search Engine"
    Then I click on element using JavaScript with xpath "//button[@class='pum-close popmake-close']"
    Then element with xpath "//input[@id='site-search']" should be present
    Then I type "Chocolate" into element with xpath "//input[@id='site-search']"
    Then I click on element using JavaScript with xpath "//button[@id='button-addon2']"
    Then I wait for element with xpath "//div[@class='mainline-results mainline-results__web']" to be present
    Then element with xpath "//div[@class='mainline-results mainline-results__web']" should contain text "Chocolate"

  @predefined11
  Scenario: Predefined steps for ekoru
    Given I open url "https://ekoru.org/"
    Then I should see page title contains "Ekoru"
    Then element with xpath "//input[@id='fld_q']" should be present
    Then I type "Chocolate" into element with xpath "//input[@id='fld_q']"
    Then I click on element using JavaScript with xpath "//div[@id='btn_search']"
    Then I wait for element with xpath "//div[@id='div_results']" to be present
    Then I wait for 10 sec
    Then element with xpath "//div[@id='div_results']" should contain text "Chocolate"

                      
                    
