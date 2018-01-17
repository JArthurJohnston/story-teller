tests
testCreateWithEmailAndPassword
	|user expectedEmail expectedPassword|
	expectedPassword  := 'bob loblaws law blog'.
	expectedEmail := 'bobLoblaw@bobLaw.law'.
	
	user := User createWithEmail: expectedEmail andPassword: expectedPassword .
	
	self assert: user email equals: expectedEmail .
	self assert: user password equals: (SHA256 new hashMessage: expectedPassword) asString 