accessing
base64Encode: aString
	^ (self encoder encode: aString asByteArray)
	