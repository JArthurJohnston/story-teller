tests
testAsDictionary
	| pageDictionary page |
	page := Page newWrittenWith: 'hello'.

	pageDictionary := page asDictionary.

	self assert: pageDictionary size equals: 3.
	self assert: (pageDictionary at: #text) equals: 'hello'.
	self assert: (pageDictionary at: #choices) isEmpty.
	self assert: (pageDictionary at: #id) isNil.