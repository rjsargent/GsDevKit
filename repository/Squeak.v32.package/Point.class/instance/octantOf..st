point functions
octantOf: otherPoint 
	"Return 1..8 indicating relative direction to otherPoint.  
	1=ESE, 2=SSE, ... etc. clockwise to 8=ENE"
	"[Sensor anyButtonPressed] whileFalse: [(Display boundingBox center 
	octantOf: Sensor cursorPoint) printString displayAt: 0@0]"
	| quad moreHoriz |
	(x = otherPoint x and: [y > otherPoint y])
		ifTrue: [^ 6].
	"special case"
	(y = otherPoint y and: [x < otherPoint x])
		ifTrue: [^ 8].
	quad _ self quadrantOf: otherPoint.
	moreHoriz _ (x - otherPoint x) abs >= (y - otherPoint y) abs.
	(quad even eqv: moreHoriz)
		ifTrue: [^ quad * 2]
		ifFalse: [^ quad * 2 - 1]