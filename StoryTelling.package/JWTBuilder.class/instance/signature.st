accessing
signature
	| encodedHeader encodedPayload signature|
	encodedHeader := self base64Encode: self header.
	encodedPayload := self base64Encode: self payload.
	signature := hmac digestMessage: (encodedHeader , '.' , encodedPayload) asByteArray.
	^ (encoder
		encode: signature) 
		asString.