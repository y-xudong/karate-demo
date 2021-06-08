Feature:

  Background:
    * url baseUrl
    * def uuidUtil = Java.type('utils.UuidUtil')
    * def randomUUID = uuidUtil.getRandom()

  Scenario: id == 1 when GET /books/1
    Given path '/books/1'
    When method get
    Then status 200
    And match response.id == '1'

  Scenario Outline: valid id for GET /books/{id}
    Given path '/books/<id>'
    When method get
    Then status 200
    And match response.id == '<id>'

    Examples:
      | id |
      | -1 |
      | 1  |
      | 2  |
      | 3  |
      | 4  |
      | 5  |
      | 10 |
      | 99 |
      | 9999999999999999999999999999 |

  Scenario: POST /books/{id} unsuccessful when book exists
    Given path '/books/1'
    When method post
    Then status 409
    And match response.message == 'this book has already existed'

  Scenario: POST /books/{id} successful when book does not exist
    Given path '/books/2'
    When method post
    Then status 200
    And match response.message == 'book stored successfully'

  Scenario: randomUUID is generated utils.UUIDUtil (method: getRandom)
    Given path '/books/' + randomUUID
    When method get
    Then status 200
    And match response.id == randomUUID
