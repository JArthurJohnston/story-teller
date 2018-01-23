instance creation
parseClaim: aString
	| claimData |
	claimData := aString trim splitOn: $:.
	^ claimData first trim allButFirstAndLast -> claimData second trim allButFirstAndLast.