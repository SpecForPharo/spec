protocol
addInstVarNamed: aString kindOf: aClass order: order

	self addInstVarNamed: aString kindOf: aClass.
	self addCodeToInitialize: aString, ' := ', aClass name, ' new' order: order