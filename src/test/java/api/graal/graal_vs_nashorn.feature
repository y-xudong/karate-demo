Feature: Graal v.s. Nashorn JS engine - usage

  Background:
    * def test_str = 'xxx1'
    * def test_array = [1, 2]

  Scenario: Nashorn replace
    * print test_str.replaceAll(/xx/g, 'y')

  Scenario: Graal replace
    * print test_str.replace('xx', 'y')

  Scenario: Nashorn array iteration
    * print karate.map(test_array, function(each){ return each + 1 })

  Scenario: Graal array iteration
    * print test_array.map(x => x + 1)
