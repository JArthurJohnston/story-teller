instance creation
fromString: aJWTString
	| header payload signature sections encoder |
	encoder := ZnBase64Encoder new.
	sections := aJWTString trim splitOn: $..
	header := sections first.
	payload := sections second.
	signature := sections third.

	(encoder decode: header) asString self halt.