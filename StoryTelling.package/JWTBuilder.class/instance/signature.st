accessing
signature
	|hmac encodedHeader encodedPayload|
	hmac := HMAC on: self hashFunction.
	hmac key: self key.
	encodedHeader := (self encoder encode: self header asByteArray) asString.
	encodedPayload := (self encoder encode: self payload asByteArray) asString.
	^(hmac digestMessage: (encodedHeader , '.', encodedPayload) asByteArray) asString.
	 
	