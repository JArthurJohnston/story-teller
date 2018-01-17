tests
testStartWith
	| configuration |
	configuration := {(#port -> testPort).}.

	app := Application startWith: configuration.

	self assert: app controller notNil.
	self assert: app controller server port equals: testPort.
	self assert: app controller server isRunning.