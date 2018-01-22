tests
testLogin
	| user token userEmail |
	userEmail := 'hi@world.com'.
	user := User createWithEmail: userEmail andPassword: 'You cant always get what you want'.
	user save.

	token := self
		sendPostRequestTo: 'login'
		with: '{"email":"' , userEmail , '"}'.

	self assert: token isNotEmpty.