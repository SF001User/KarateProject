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

    # http://api.zippopotam.us/us/{{zipcode}}
    Scenario Outline: Search for city with <zipcode>
      * url 'http://api.zippopotam.us'
      Given path 'us' , <zipcode>
      When method GET
      Then status 200
      And print response
      Examples:
        | zipcode  |
        | 22030    |
        | 22031    |
        | 22032    |
        | 22033    |

  # http://api.zippopotam.us/us/{{state}}/{{city}}

    Scenario Outline: Search for zipcode with <state> and <city>
      * url 'http://api.zippopotam.us'
      # this will add /statename/cityname to url
      Given path 'us','<state>', '<city>'
      When method GET
      Then status 200
      And print response

      Examples:
        | state | city |
        | va   | fairfax |
        | va   | vienna |
        | il   | chicago |




