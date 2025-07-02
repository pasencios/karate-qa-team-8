Feature: Prueba Single User

  Scenario: Case obtener usuario

    Given url 'https://reqres.in'
    And path '/api/users/2'
    And header 'x-api-key' = 'reqres-free-v1'
    When method get
    Then status 200
