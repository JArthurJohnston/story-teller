instance creation
parseSection: aString
	| claimStrings claims |
	claims := OrderedCollection new.
	claimStrings := aString trim allButFirstAndLast splitOn: $,.
	claimStrings do: [ :eachString | claims add: (self parseClaim: eachString). ].
	^ claims.