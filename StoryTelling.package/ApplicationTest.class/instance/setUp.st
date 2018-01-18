tests
setUp
	super setUp.
	znClient := ZnClient new.
	testPort := 9090.
	app := Application
		startWith:
			{(#defaultOutput -> #json).
			(#port -> testPort).
			(#debugMode -> true).}.
	self initializeTestDatabase .