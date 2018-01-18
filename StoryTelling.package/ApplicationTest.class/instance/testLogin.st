tests
testLogin
	| pages expectedPage |
	expectedPage := Page newWrittenWith: 'hello world'.
	expectedPage save.

	pages := self sendPostRequestTo: 'http://localhost:9090/login' with: '{"email":"joe.a.johnston@gmail.com"}'.

	self assert: pages equals: '[{"text":"hello world","choices":[]}]'.