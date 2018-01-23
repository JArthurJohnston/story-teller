tests
testBase64Encode
	| builder encodedHeader encodedPayload |
	builder := JWTBuilder new.

	encodedHeader := builder base64Encode: builder header.
	encodedPayload := builder base64Encode: builder payload.

	self assert: encodedHeader equals: 'eyJhbGciOiAiSFMyNTYiLCJ0eXAiOiAiSldUIn0='.
	self assert: encodedPayload equals: 'eyJpc3MiOiJTdG9yeS1UZWxsZXIiLCJpYXQiOiIyMDE4LTAxLTIzVDAxOjA1OjA3LjQyMzk3MiswMDowMCJ9'.