tests
testRegisteredClaims
	| builder claims now issuedAtTimestamp |
	builder := JWTBuilder new.
	now := DateAndTime now asUTC.
	claims := builder registeredClaims.
	self assert: claims size equals: 2.
	
	self assert: claims first key equals: 'iss'.
	self assert: claims first value equals: 'Story-Teller'.
	
	self assert: claims second key equals: 'iat'.
	
	issuedAtTimestamp := DateAndTime fromString: claims second value.
	self assert: issuedAtTimestamp year equals: now year.
	self assert: issuedAtTimestamp month equals: now month.
	self assert: issuedAtTimestamp day equals: now day.
	self assert: issuedAtTimestamp hour equals: now hour.
	self assert: issuedAtTimestamp minutes equals: now minutes.
	self assert: issuedAtTimestamp seconds equals: now seconds