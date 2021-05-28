Feature: Librarian should be able to get all data

  Background:
    * url 'https://library1.cybertekschool.com/rest/v1'

  Scenario: as librarian user , i should be able to get dashboard data
    * def result = call read('login.feature')
    * print result
    * print 'using result object to access response body ' , result.response.token
    * print 'using the top secret variable field directly' , result.topSecretToken
