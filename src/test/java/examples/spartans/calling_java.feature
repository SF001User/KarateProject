  Feature: I should be able to use all java stuff here in scenario
    Scenario: Using Calculator from utility package
      * def myCalculator = Java.type('utility.Calculator')
      * def result = myCalculator.add2Numbers(10,20)
      * print 'addition result is ' , result




