initialization
initialize
	"Initialization code for AbstractHolder"

	super initialize.

	classSymbols := self initializeClassesDictionary.
	selectorSymbols := self initializeSelectorsDictionary