initialize
registerEvents

	treeModel announcer weak
	on: MorphTreeSelectionChanged do: [ :ann | selectionHolder contents: ann selection selectedItems ].

	rootsHolder whenChangedDo: [ self updateTree ].
	childrenBlockHolder whenChangedDo: [ self updateTree ].
	displayBlock whenChangedDo: [ self updateTree ].
	rootNodeHolder whenChangedDo: [ self updateTree ].
	
	columns whenChangedDo: [ :col | 
		self widget ifNotNil: [ :w | 
			w 
				columns: col;
			 	updateColumnMorphs. ] ]