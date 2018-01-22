tests
testSignature
	| builder |
	builder := JWTBuilder new.
	builder addClaim: 'thing' -> 'one'.
	
	self assert: builder signature asString   equals: 'ð@Yøj5oÍÊj¿.óuåÚÀIÙTkïFÁ	Ô'.