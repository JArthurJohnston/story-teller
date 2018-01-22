construction
initializeDatabase
	database ifNil: [ 
		database :=  VOMongoRepository 
      host: VOMongoRepository defaultHost 
      database: 'StoryTeller' ].
	VORepository setRepository: database.