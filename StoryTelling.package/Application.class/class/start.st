construction
start
	current :=  self
		startWith:
			{(#defaultOutput -> #json).
			(#port -> 8080).
			(#debugMode -> true).}.