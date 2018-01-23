tests
testParseClaim
	| parsedClaim |
	parsedClaim := JWTBuilder parseClaim: '"foo":"bar"'.

	self assert: parsedClaim key equals: 'foo'.
	self assert: parsedClaim value equals: 'bar'.