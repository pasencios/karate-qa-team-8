Feature: Prueba Single User

Scenario Outline: Case find single user with variable and prints outline <idUser>
* def urlbase = 'https://regres.in'
Given url urlbase
And header x-api-key = "reqres-free-v1"
And path "api/users/"  + <idUser>
When method get
Then status 200
* print response
And match response.data contains { "id":<idUser>}
Examples:
|idUser | name | pet|
|1	|	|	|
|2	|	|	|
|3	|	|	|