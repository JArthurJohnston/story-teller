tests
testVerifyJwt
	| validJwt invalidJwt |
	"made with: {'alg': 'HS256','typ': 'JWT'}.{'email':'joe.a.johnston@gmail.com'}"
	validJwt := 'eyJhbGciOiAiSFMyNTYiLCJ0eXAiOiAiSldUIn0=.eyJlbWFpbCI6ImpvZS5hLmpvaG5zdG9uQGdtYWlsLmNvbSJ9.4JWYN68CJtHDZqbOGklaPFIqvwVeW86g/XjnobwkCok='.
	"replaced the email with bob@burgers.com"
	invalidJwt := 'eyJhbGciOiAiSFMyNTYiLCJ0eXAiOiAiSldUIn0=.eyJlbWFpbCI6ImJvYkBidXJnZXJzLmNvbSJ9.gFH2uBE9ytTSQe3+IFXOa24qe4v8num8j87Cya6eSTA='.

	self assert: (JWTBuilder verifyJwt: validJwt).
	self deny: (JWTBuilder verifyJwt: invalidJwt).