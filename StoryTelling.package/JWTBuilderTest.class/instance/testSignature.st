tests
testSignature
	| builder signature |
	builder := JWTBuilder new.
	builder addClaim: 'thing' -> 'one'.
	signature := builder signature.

	self assert: (builder verify: signature).

	builder addClaim: 'somthing' -> 'that wasnt there before'.
	self deny: (builder verify: signature).