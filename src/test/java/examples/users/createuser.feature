Feature: Prueba Crear usuario

  Scenario: Case crear usuario 1
   * def body = {"id": 0, "username": "eayasta", "firstName": "Evelyn", "lastName": "Ayasta", "email": "eayastatest@gmail.com", "password": "123456", "phone": "999999999", "userStatus": 0}
    Given url 'https://petstore.swagger.io/v2'
    And path "user"
    And request body
    When method post
    Then status 200
    * print response


  Scenario: Case crear usuario 2
    * def body =
    """
        {
        "id": 0,
        "username": "esoberon",
        "firstName": "Eldda",
        "lastName": "Soberon",
        "email": "elddatest@gmail.com",
        "password": "123456",
        "phone": "999999999",
        "userStatus": 0
        }
    """
    Given url 'https://petstore.swagger.io/v2'
    And path "user"
    And request body
    When method post
    Then status 200
    * print response
