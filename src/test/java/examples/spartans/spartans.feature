Feature: Spartans App Feature testing
# Use this ip address that has spartan app with no auth
# So we can just focus on writing feature file correctly
  Background:
    * url 'http://54.236.150.168:8000/'


  Scenario: User should be able to call /api/hello to get greeting
    Given path '/api/hello'
    When method get
    Then status 200
    # checking content type header
    # use match rather than assert when you assert the part of response
    Then match header Content-Type == 'text/plain;charset=UTF-8'
    # checking the payload
    Then assert response == 'Hello from Sparta'

    Scenario:  Get One Spartan and verify response
      # Sending request to /api/spartans/10
#     Given path '/api/spartans/10'
      Given path '/api/spartans' , 10
      When method GET
      Then status 200
      # check the content type header as it did in example above
      Then match header  Content-Type == 'application/json'
      Then print 'Karate is awesome so far , hi ha!'
      Then print 'Karate printing' + 'Concatenating with plus '
      Then print 'Karate printing' , 'Concatenating with comma '
      Then print response
      #  accessing the fields of json object
      Then print 'ID of this Spartan' , response.id
      Then print 'Gender of this Spartan' , response.gender
      Then print 'Name of this Spartan' , response.name
      Then print 'Phone of this Spartan' , response.phone


