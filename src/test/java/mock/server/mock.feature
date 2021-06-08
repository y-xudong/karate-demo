@ignore
Feature:

  Background:
    * configure responseHeaders = { 'Content-Type': 'application/json; charset=utf-8' }

  Scenario: pathMatches('/books/{id}') && methodIs('get')
    * def id = pathParams.id
    * def response = read('books_id_get.json')

  Scenario: pathMatches('/books/{id}') && methodIs('post') && pathParams.id == '1'
    * def id = pathParams.id
    * def response = read('books_id_post_error.json')
    * def responseStatus = 409

  Scenario: pathMatches('/books/{id}') && methodIs('post') && pathParams.id != '1'
    * def id = pathParams.id
    * def response = read('books_id_post.json')
