converting
asDictionary
	| dictionary |
	dictionary := Dictionary new.
	self class instVarNames
		do: [ :eachName | 
			| variableIndex |
			variableIndex := self class instVarIndexFor: eachName.
			dictionary at: eachName put: (self instVarAt: variableIndex). ].
	^ dictionary.