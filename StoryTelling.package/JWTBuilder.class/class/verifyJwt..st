instance creation
verifyJwt: aJwtString
	| jwtSections hmac signature jwtSignature urlEncoder |
	urlEncoder := ZnBase64Encoder new.
	hmac := SHA256 new hmac.
	hmac key: self key.

	jwtSections := aJwtString splitOn: $..
	jwtSignature := urlEncoder decode: jwtSections last.

	signature := hmac
		digestMessage: (jwtSections first , '.' , jwtSections second) asByteArray.
	^ jwtSignature = signature asString.