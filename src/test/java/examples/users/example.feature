Feature: Pruebas de Pet Store

  Scenario: Case find by status pet

    Given url 'https://petstore.swagger.io/v2'
    And path 'pet/findByStatus'
    And param status = 'sold,pending'
    When method get
    Then status 200
