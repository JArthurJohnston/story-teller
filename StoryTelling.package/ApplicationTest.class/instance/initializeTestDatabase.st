tests
initializeTestDatabase
|repo|
	repo := VOMongoRepository 
            host: VOMongoRepository defaultHost 
            database: 'StoryTellerTest'.
VORepository setRepository: repo.