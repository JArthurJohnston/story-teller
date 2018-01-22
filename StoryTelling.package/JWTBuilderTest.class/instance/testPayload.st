tests
testPayload
	|builder|
	builder := JWTBuilder new.
	
	builder addClaim: 'email' -> 'joe.a.johnston@gmail.com'.
	
	self assert: builder payload equals: '{"email":"joe.a.johnston@gmail.com"}'. 