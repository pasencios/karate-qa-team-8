Feature: Booking

Scenario: Case create booking
  * def body =
    """
  {
  "firstname" : "Scott",
  "lastname" : "Travis",
  "totalprice" : 111,
  "depositpaid" : true,
  "bookingdates" : {
  "checkin" : "2025-08-01",
  "checkout" : "2025-08-07"
  },
  "additionalneeds" : "Breakfast"
  }
  """
Given url 'https://restful-booker.herokuapp.com/booking'
And request body
And header Content-Type = 'application/json'
And header Accept =  'application/json'
When method post
Then status 200
* print response.bookingid
* def newid =  response.bookingid
* print newid


  Scenario: Case Get booking
    Given url 'https://restful-booker.herokuapp.com/booking/' + newid
    And header Accept =  'application/json'
    When method get
    Then status 200
    * print response




  Scenario: Case update booking
    * def BookingId = 316
    * def body =
    """
{
   "firstname": "Scott",
   "lastname": "Travis",
   "totalprice": 300,
    "depositpaid": false,
   "bookingdates": {
        "checkin": "2025-08-01",
        "checkout": "2025-08-08"
    },
    "additionalneeds": "Breakfast"
 }
  """
    Given url 'https://restful-booker.herokuapp.com/booking/' + BookingId
    And request body
    And header Content-Type = 'application/json'
    And header Accept =  'application/json'
    And header Cookie = 'token=abc123'
    And header Authorization = 'Basic YWRtaW46cGFzc3dvcmQxMjM='
    When method put
    Then status 200