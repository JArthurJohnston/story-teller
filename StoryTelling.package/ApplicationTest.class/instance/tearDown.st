tests
tearDown
	app controller server stop.
	Page removeAll.
	User removeAll.
	VORepository setRepository: Application database.
	super tearDown.