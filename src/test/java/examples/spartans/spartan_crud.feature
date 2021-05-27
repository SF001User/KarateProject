Feature: Spartan Crud Operation feature

  Background:
    * url 'http://54.236.150.168:8000/'

    Scenario: Variable Practice in feature file
      # POST /api/spartans
      # variable intro , using def keyword
      * def myNumber = 100
      * def myBatchName = 'Batch 21'
      * def myDio = { name : 'dio' , age : 3 }
      * print 'my number value is' , myNumber
      * print 'my BatchName value is' , myBatchName
      * print 'my Dio value is' , myDio
      # storing multi line string as is using triple quotations
      * def mySpartan =
                  """
                      {
                      "gender": "string",
                      "name": "string",
                      "phone": 0
                      }
                  """
      * print 'my spartan json object' , mySpartan


      Scenario:  Add One Spartan
        * def myPostPayload =
              """
                  {
                      "name": "Mustafa",
                      "gender": "Male",
                      "phone": 1234567890
                  }
              """
        Given path '/api/spartans'
        And header Content-Type = 'application/json'
        # this is how we provide body using request keyword
        And request myPostPayload
        When method POST
        Then status 201
        And print response