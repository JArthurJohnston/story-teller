intance creation
createWithEmail: anEmail andPassword: aPlainTextPassword
	^self new
		email: anEmail;
		password: (SHA256 new hashMessage: aPlainTextPassword) asString;
		yourself.