initialization
initialize
	"Initialization code for ComposableModelDescription"

	super initialize.
	
	addClassDescription := AddClassDescription new.
	addInstVarDescriptions := OrderedCollection new.
	addIntoMethodDescriptions := OrderedCollection new.
	addMethodDescriptions := OrderedCollection new.
	specDescription := SpecDescription new.
	
	superclass := ComposableModel.