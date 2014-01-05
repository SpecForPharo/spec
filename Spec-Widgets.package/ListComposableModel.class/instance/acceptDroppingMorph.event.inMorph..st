drag and drop - private
acceptDroppingMorph: draggedMorph event: event inMorph: source
	| item index |
	
	index := self widget
		ifNil:  [ 0 ]
		ifNotNil: [:w | w rowAtLocation: event position ].
	item := listHolder contents at: index ifAbsent: [ nil ].
	
	^ self acceptDropBlock valueWithEnoughArguments: { draggedMorph. event. source. item. index }