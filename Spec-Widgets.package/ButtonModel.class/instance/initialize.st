initialization
initialize
	"Initialization code for ButtonComposableModel"

	super initialize.

	actionHolder := [] asValueHolder.
	labelHolder := '' asValueHolder.
	iconHolder := nil asValueHolder.
	stateHolder := true asValueHolder.
	enabledHolder := true asValueHolder.
	helpHolder := nil asValueHolder.
	actionPerformedHolder := nil asValueHolder.
	askBeforeChangingHolder := false asValueHolder.
	
	labelHolder whenChangedDo: [	self changed: #label ].
	iconHolder whenChangedDo: [	self changed: #label ].
	stateHolder whenChangedDo: [	self changed: #state ].
	enabledHolder whenChangedDo: [	self changed: #enabled ].
	askBeforeChangingHolder 
		whenChangedDo: [:newValue | self widget 
											ifNotNil: [:widget | widget askBeforeChanging: newValue ]].
	
		
	self on: Character space asKeyCombination do: [ self action ].