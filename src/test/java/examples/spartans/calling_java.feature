  Feature: I should be able to use all java stuff here in scenario
    Scenario: Using Calculator from utility package
      # This is how you refer your Java class in feature file
      # Java.type('fully qualified name goes here')
      * def myCalculator = Java.type('utility.Calculator')
      # Calling the static method of Calculator class
      * def result = myCalculator.add2Numbers(10,20)
      * print 'addition result is ' , result




