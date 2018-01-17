tests
testGetPages
	| pages expectedPage |
	expectedPage := Page newWrittenWith: 'hello world'.

	pages := self sendGetRequestTo: 'http://localhost:9090/pages'.

	self assert: pages equals: '[{text:"hello world"}]'.