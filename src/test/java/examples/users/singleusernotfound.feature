Feature: Prueba Single User Not Found

  Scenario: Case usuario no encontrado

    Given url 'https://reqres.in'
    And path '/api/users/23'
    And header x-api-key = 'reqres-free-v1'
    When method get
    Then status 404