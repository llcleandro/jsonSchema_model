
### HTTParty.get whith pageObject ###
Given(/^that I search term "(.*?)"/) do |searchTerm|
  @response = search_for_term(searchTerm)
  debug_url #print url
end

### HTTParty.get whithout pageObject ###
# Given(/^that I search term "(.*?)"/) do |searchTerm|
#   path = "http://www.mocky.io/v2/#{searchTerm}"
#   headers = {"Content-Type" => "application/json"}
#   @response = HTTParty.get(path, :headers => headers, :format => :json)
#   puts path #print url
# end

Then(/^response "([^"]*)" should be returned$/) do |responseCode|
  response_code(responseCode)
end

Then(/^the response should have to contain "([^"]*)"$/) do |searchTerm|
  parsed_response = JSON.parse(@response.body)
  expect(parsed_response["feed"]["title"]["text"]).to eq(searchTerm)
end

Then(/^the json should be formated in schema "([^"]*)"$/) do |schemaName|
  body = JSON.parse(@response.body)
  expect(Schema_Validator.new.validate_json(schemaName, body)).to eq(true)
end