Feature: Data driven example

  Scenario Outline: I should be able to read examples in same scenario

    Given print 'If we have number 1' , <num1>
    And print 'we also have number 2' , <num2>
    When print 'Adding these two numbers result should be ' , <result>

    Then assert <num1> + <num2> == <result>

    Examples:
      | num1 | num2 | result |
      | 2    | 4    | 6
      | 4    | 1    | 5
      | 55    | 15    | 70

