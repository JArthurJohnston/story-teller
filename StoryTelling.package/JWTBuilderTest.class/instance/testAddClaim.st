tests
testAddClaim
	| builder expectedClaim |
	builder := JWTBuilder new.

	expectedClaim := 'email' -> 'hello@world.com'.
	builder addClaim: expectedClaim.

	self assert: builder claims first equals: expectedClaim.