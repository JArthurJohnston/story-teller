construction
handleCorsPreflight: request withResponse: response
	request method = #OPTIONS
		ifTrue: [ response statusLine: ZnStatusLine ok.
			response headers
				at: 'access-control-allow-origin' add: '*';
				at: 'access-control-allow-headers' add: 'content-type';
				at: 'access-control-allow-method' add: 'GET, POST, PUT, DELETE' ]