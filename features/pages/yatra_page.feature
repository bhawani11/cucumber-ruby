Feature: Yatra search feature

  Scenario: 01- account creation on yatra page for permanent email id
    Given Launch yatra site
    When click on MyAccount
    And user can click on sign in icon
    And user enter userid or mobile number
    And user can click on continue
    And user enter OTP and can click on submit
    And user can fill emailId
    And user can create own password
    Then select designation from dropdown
    And enter full name of user
    And enter last name of user
    # And click on create account
    And user can close this scenario

  Scenario: 02- account login on yatra page
    Given Launch yatra site
    When click on MyAccount
    And user can click on sign in icon
    And user enter userid or mobile number
    # And user can click on continue
    And user can close this scenario

  Scenario: 03- user should login and logout both
    Given Launch yatra site
    When click on MyAccount
    And user can click on login icon
    And user enter userid only
    And user can click on continue
    And user enter own password
    And user click on login button
    And user hover on profile icon
    And user can click on logout
    And user can close this scenario

  Scenario: 04 account creation on yatra page
    Given Launch yatra site
    When click on MyAccount
    And user can click on sign in icon
    And user enter mobile "9098449985" number with "valid"
    And user can click on continue

  Scenario Outline:  05 account creation on yatra page using scenario outline
    Given Launch yatra site
    When click on MyAccount
    And user can click on     sign in icon
    And user enter mobile "<mobile>" number
    # And user can click on continue
    And user can close this scenario
    Examples:
      | mobile     |
      | 9098449985 |
      | 8770072279 |
      | 9753576779 |