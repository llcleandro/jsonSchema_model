Feature: Be able to get and see response for itens in diferents environments

@functional @schema @term
Scenario: Services whith term - validate Json
	Given that I search term "593ae5ad1100002f15a9586b"
	Then response "200" should be returned
	Then the response should have to contain "Google Developer Events"
	And the json should be formated in schema "json_with_parameter.json"