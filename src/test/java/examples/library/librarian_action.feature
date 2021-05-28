Feature: Librarian should be able to get all data

  Background:
    * url library_url

  Scenario: as librarian user , i should be able to get dashboard data /dashboard_stats
    * def result = call read('login.feature')
#    * print result
#    * print 'using result object to access response body ' , result.response.token
#    * print 'using the top secret variable field directly' , result.topSecretToken
    Given path '/dashboard_stats'
    And header x-library-token = result.topSecretToken
    When method GET
    Then status 200
#    * print response
    * print batchName

