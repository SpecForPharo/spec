protocol
retrieveSelectorSymbolFor: aSymbol

	^ self bindings
		ifNil: [ self retrieveDefaultSelectorSymbolFor: aSymbol ]
		ifNotNil: [:binding | binding selectorSymbolFor: aSymbol ifAbsent: [ self retrieveDefaultSelectorSymbolFor: aSymbol ]]