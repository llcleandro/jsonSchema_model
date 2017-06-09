module SearchHelper
	def search_for_term(term)
		@url = "/v2/#{term}"
		@response = SearchService.get(@url)
	end
	def response_code(responseCode)
		@response.code.to_s.should == responseCode
		@response.bad_gateway? != "false" #for exemple
  		@response.success? == "true" #for exemple
	end
	def debug_url
		puts ENVIRONMENT['path_with_parameter']+@url
	end		
end
World(SearchHelper)


class SearchService
	include HTTParty
	base_uri ENVIRONMENT['path_with_parameter']
	format :json
	headers 'Content-Type' => 'application/json'
end
