accessing
initializeHMAC
	hmac := HMAC on: self hashFunction.
	hmac key: self key.