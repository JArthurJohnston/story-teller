tests
testInitialize
	| builder |
	builder := JWTBuilder new.

	self assert: builder claims isEmpty.
	self assert: builder encoder notNil.
	self assert: builder hashFunction notNil.