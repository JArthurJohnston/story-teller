as yet unclassified
payload
	| allClaims |
	allClaims := OrderedCollection withAll: self registeredClaims.
	allClaims addAll: self claims.
	^ String
		streamContents: [ :stream | 
			stream nextPut: ${.
			allClaims allButLast
				do: [ :eachClaim | 
					self writeClaim: eachClaim on: stream.
					stream nextPut: $, ].
			self writeClaim: allClaims last on: stream.
			stream nextPut: $} ]