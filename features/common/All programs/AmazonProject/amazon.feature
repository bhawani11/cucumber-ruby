Feature: Amazon search feature
  Scenario: user can be login on login page
  Scenario: amazon search
    Given Launch amazon site
    When enter on search bar
    And click on search button
    And user can click on selected item
    And user can switch to window
    And user can click on add cart
    And user can click on proceed item
    And user can close these scenario

  Scenario: amazon search user can enter phone
    Given Launch amazon site
    When enter on search bar
    And click on search button
    And user can click on selected item
    And user can switch to window
    And user can click on add cart
    And user can click on proceed item
    And user can enter an phone number
    And user can click on continue button
    And user can close these scenario

  Scenario: amazon search user can delete the item
    Given Launch amazon site
    When enter on search bar
    And click on search button
    And user can click on selected item
    And user can switch to window
    And user can click on add cart
    And user can click on proceed item
    And user can enter an phone number
    And user can click on continue button
    And user can click on back icon
    And user can click on my cart
    And user can click on delete item
    And user can close these scenario

  Scenario: amazon search user can delete the item
    Given Launch amazon site
    When enter on search bar
    And click on search button
    And user can click on selected item
    And user can switch to window
    And user can click on add cart
    And user can click on proceed item
    And user can enter an phone number
    And user can click on continue button
    And user can click on back icon
    And user can click on my cart
    And user can click on delete "1" item
    And user can close these scenario
#
  Scenario Outline: amazon search user can click the item
    Given Launch amazon site
    When enter "<word>" on search bar
    And click on search button
    And user can click on selected item
    Examples:
      |word|
      |bottle|
      |beg   |
      |phone |
      |headphone|
