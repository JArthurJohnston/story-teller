tests
testGetPages
	| pages expectedPage |
	expectedPage := Page newWrittenWith: 'hello world'.
	expectedPage save.

	pages := self sendGetRequestTo: 'pages'.

	self assert: pages equals: '[{"text":"hello world","choices":[]}]'.