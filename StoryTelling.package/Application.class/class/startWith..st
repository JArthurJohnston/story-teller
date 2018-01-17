construction
startWith: aCollectionOfConfigurations
	| server |
	server := SerializingTeapot  configure: aCollectionOfConfigurations.
	self createRoutesFor: server.
	server start.
	^ self new
		controller: server;
		yourself.