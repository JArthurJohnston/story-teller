tests
testBuildJwt
	|builder|
	builder := JWTBuilder new.
	
	builder addClaim: 'email' -> 'joe.a.johnston@gmail.com'.
	
	self assert: builder buildJwt equals: 'fkljsjfsjfhskjhkh4u348r9q8uafy9qyt.ufhf9qp8rqhrf8u34hruf.f9h398rhuofhfh'. 