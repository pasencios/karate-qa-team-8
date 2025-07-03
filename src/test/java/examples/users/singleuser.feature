Feature: Prueba Single User

  Scenario: Case obtener usuario

    Given url 'https://reqres.in'
    And path '/api/users/2'
    And header x-api-key = 'reqres-free-v1'
    When method get
    Then status 200


  Scenario: Case crear usuario
   * def body =
    """
    {
    "name": "Maria",
    "job": "leader"
    }
    """
    Given url 'https://reqres.in'
    And path '/api/users'
    And header x-api-key = 'reqres-free-v1'
    And request body
    When method post
    Then status 201
    * print response
    * def newid =  response.id
    * print newid
