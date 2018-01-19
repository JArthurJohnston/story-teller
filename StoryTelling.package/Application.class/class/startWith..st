construction
startWith: aCollectionOfConfigurations
	| server |
	server := Teapot configure: aCollectionOfConfigurations.
	self initializeDatabase.
	self createRoutesFor: server.
	server start.
	^ self new
		controller: server;
		yourself.