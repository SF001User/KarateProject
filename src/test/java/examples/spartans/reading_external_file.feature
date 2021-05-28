Feature:  I want to read external files
  Scenario: reading json file in same folder
    # we can read any file using the built-in read method
    # https://github.com/intuit/karate#reading-files
    * def fileText = read('singleSpartan.json')
    * print fileText