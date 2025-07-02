Feature: Prueba Single User

  Scenario: Case obtener usuario
    * def idUser = 2
    Given url 'https://reqres.in'
    And path "api/users/" + idUser
    And header x-api-key = 'reqres-free-v1'
    When method get
    Then status 200
    * print response
    And match response.data contains {"id":2}