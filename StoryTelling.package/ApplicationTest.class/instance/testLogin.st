tests
testLogin
	| user token userEmail |
	userEmail := 'hi@world.com'.
	user := User createWithEmail: userEmail andPassword: 'You cant always get what you want'.
	user save.

	token := self
		sendPostRequestTo: 'http://localhost:8080/login'
		with: '{"email":"' , userEmail , '"}'.

	self assert: token isNotEmpty.