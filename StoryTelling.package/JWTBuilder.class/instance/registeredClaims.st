getter
registeredClaims
	| expirationTime |
	expirationTime := DateAndTime now asUTC.
	^ Array with: 'iss' -> 'Story-Teller' with: 'iat' -> expirationTime asString.
	"includes the issuer and the time the JWT was issued"