printing
printOn: aStream

	aStream nextPutAll: self schemeName.
	aStream nextPutAll: '://'.
	self username ifNotNil: [
		aStream nextPutAll: self username encodeForHTTP.
		self password ifNotNil: [
			aStream nextPutAll: ':'.
			aStream nextPutAll: self password encodeForHTTP].
		aStream nextPutAll: '@' ].
	aStream nextPutAll: self authority.
	port ifNotNil: [aStream nextPut: $:; nextPutAll: port printString].
	path do: [ :pathElem |
		aStream nextPut: $/.
		aStream nextPutAll: pathElem encodeForHTTP. ].
	self query == nil  ifFalse: [ 
		aStream nextPut: $?.
		aStream nextPutAll: self query. ].
	self fragment == nil  ifFalse: [
		aStream nextPut: $#.
		aStream nextPutAll: self fragment encodeForHTTP. ].
