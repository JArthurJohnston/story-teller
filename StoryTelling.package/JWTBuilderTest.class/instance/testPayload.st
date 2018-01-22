tests
testPayload
	| builder |
	builder := JWTBuilder new.
	builder
		addClaim: 'email' -> 'some.one@gmail.com';
		addClaim: 'thing' -> 'one'.
	self assert: builder payload first equals: ${.
	self assert: builder payload last equals: $}.
	self assert: (builder payload includesSubstring: '"iss":"Story-Teller"').
	self
		assert: (builder payload includesSubstring: '"email":"some.one@gmail.com","thing":"one"')