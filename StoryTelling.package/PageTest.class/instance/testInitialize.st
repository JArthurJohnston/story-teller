tests
testInitialize
	|page|
	page := Page new.
	
	self assert: page text equals: ''.
	self assert: page choices isEmpty .
	self assert: page id isNil.