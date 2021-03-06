match enumeration
matchesOnStream: aStream do: aBlock
	"Be extra careful about successful matches which consume no input.
	After those, make sure to advance or finish if already at end."

	| position |
	[position := aStream position.
	self searchStream: aStream] whileTrue:
		[aBlock value: (self subexpression: 1).
		position = aStream position ifTrue: 
			[aStream atEnd
				ifTrue: [^self]
				ifFalse: [aStream next]]]