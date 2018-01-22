construction
start
	current :=  self
		startWith: (Array 
			with: #defaultOutput -> #json 
			with: #port -> 8080 
			with: #debugMode -> true).
	^ current.