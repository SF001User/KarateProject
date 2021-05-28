Feature: We want to be able call another feature file
  Scenario: Calling top secret feature
    * print 'doing some work here'
    # read is for reading , call is actually executing the feature and generating result
    * def result =   call read('reusable.feature')
    * print result
    * print result.secret1
    * print result.secret2
