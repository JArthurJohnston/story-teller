tests
testAsDictionaryHandlesNils
	| pageDictionary page |
	page := Page new
		id: nil;
		choices: nil;
		text: nil;
		yourself.

	pageDictionary := page asDictionary.

	self assert: pageDictionary size equals: 3.
	self assert: (pageDictionary at: #id) isNil.
	self assert: (pageDictionary at: #text) isNil.
	self assert: (pageDictionary at: #choices) isNil.