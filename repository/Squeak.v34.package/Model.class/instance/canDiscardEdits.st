dependents
canDiscardEdits
	"Answer true if none of the views on this model has unaccepted edits that matter."

	dependents ifNil: [^ true].
	^ super canDiscardEdits