Feature: User should be able to login

      # https://library1.cybertekschool.com/rest/v1
    # email librarian69@library     password KNPXrm3S

  Scenario: Logging in as valid librarian user

    Given url 'https://library1.cybertekschool.com/rest/v1'
    And   path 'login'
    # And  header Content-Type = 'application/x-www-form-urlencoded'
    # form field keyword is used for providing x-www-form-urlencoded form data
    And form field email = 'librarian69@library'
    And form field password = 'KNPXrm3S'
    When method POST
    Then status 200
    And print response.token


