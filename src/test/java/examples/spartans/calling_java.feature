  Feature: I should be able to use all java stuff here in scenario
    Scenario: Using Calculator from utility package
      # This is how you refer your Java class in feature file
      # Java.type('fully qualified name goes here')
      * def myCalculator = Java.type('utility.Calculator')
      # Calling the static method of Calculator class
      * def result = myCalculator.add2Numbers(10,20)
      * print 'addition result is ' , result


      Scenario: trying out the spartan util with random map body
        * def Spartan_Util = Java.type('utility.Spartan_Util')
        * def payload = Spartan_Util.getRandomSpartanMap()
        * print payload
        # Now lets send post request using this random payload
        Given url 'http://54.236.150.168:8000/'
        And path '/api/spartans'
        And header Content-Type = 'application/json'
        And request payload
        When method POST
        Then status 201
        And print response




