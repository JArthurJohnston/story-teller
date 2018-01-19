tests
testAddClaim
	| builder jwt expectedClaim |
	builder := JWTBuilder new.

	expectedClaim := 'email' -> 'hello@world.com'.
	builder addClaim: expectedClaim.

	self assert: (builder claims contains: expectedClaim ).