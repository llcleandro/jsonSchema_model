This project is one simple test using HTTParty, JsonSchema and PageObject.


## Mock.io ##
- Online tool for testing REST APIs with real HTTP responses.
- Copy and paste the Json below in http://www.mocky.io for generate public url.
- You can use another Json for you test.
{
    "version": "1.0",
	"encoding": "UTF-8",
	"feed": {
		"xmlns": "http://www.w3.org/2005/Atom",
		"xmlns$openSearch": "http://a9.com/-/spec/opensearchrss/1.0/",
		"xmlns$gd": "http://schemas.google.com/g/2005",
		"xmlns$gCal": "http://schemas.google.com/gCal/2005",
		"id": {
			"$t": "..."
		},
		"updated": {
			"date": "2006-11-12T21:25:30.000Z"
		},
		"title": {
			"type": "text",
			"text": "Google Developer Events"
		},
		"subtitle": {
			"type": "text",
			"calendar": "The calendar contains information about upcoming developer"
		},
		"link": {
			"rel": "...",
			"type": "application/atom+xml",
			"href": "..."
		}
	}
}


### JsonSchema Generation ###
- You can use the site https://jsonschema.net for generete your JsonSchema.
- Copy Json and paste in jsonschema.net, you can edit properties of Json alternating between optional and required.