tests
testNewWrittenWith
	| page expectedText |
	expectedText := 'mukashi mukashi'.

	page := Page newWrittenWith: expectedText.

	self assert: expectedText  equals: page text.