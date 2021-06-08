Feature: start server for 10 minutes

  Background: start server
    * karate.start({ mock: 'mock.feature', port: 8080 })

  Scenario: sleep 10 minutes
    * pause(600000)
