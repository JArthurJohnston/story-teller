tests
testFromString
	| jwtString builder |
	"the jwt was made from : {'alg': 'HS256','typ': 'JWT'}.{'email':'joe.a.johnston@gmail.com'}"
	jwtString := 'eyJhbGciOiAiSFMyNTYiLCJ0eXAiOiAiSldUIn0=.eyJlbWFpbCI6ImpvZS5hLmpvaG5zdG9uQGdtYWlsLmNvbSJ9.gFH2uBE9ytTSQe3+IFXOa24qe4v8num8j87Cya6eSTA='.

	builder := JWTBuilder fromString: jwtString.

	self assert: builder claims size equals: 2.