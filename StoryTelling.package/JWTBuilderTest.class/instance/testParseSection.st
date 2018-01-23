tests
testParseSection
	| parsedHeaders |
	parsedHeaders := JWTBuilder parseSection: '{"hello":"world","foo":"bar"}'.

	self assert: parsedHeaders size equals: 2.
	self assert: parsedHeaders first key equals: 'hello'.
	self assert: parsedHeaders second key equals: 'foo'.

	self assert: parsedHeaders first value equals: 'world'.
	self assert: parsedHeaders second value equals: 'bar'.