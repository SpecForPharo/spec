specs
defaultSpec

	^ { #NewList.
		#model:.	#model.
		#hResizing:.	#spaceFill.
		#vResizing:.	#spaceFill.
		#deSelectOnReclick:.	#(model deSelectOnReclick).
		#isMultipleSelection:.	#(model isMultipleSelection).
		#unselectOnChange:.	#(model unselectOnChange).
		#whenSelectedIndexChangedDo:.	#(model indexHasBeenSelected).
		#whenSelectedIndexesChangedDo:.	#(model indexesHasBeenSelected).
		#whenSelectedItemChangedDo:.	#(model itemHasBeenSelected).
		#whenSelectedItemsChangedDo:.	#(model itemsHasBeenSelected).
		#whenHeaderIsClickedDo:.	#(model headerClickedBlock).
		#endOfInitialization.
		#setIndex:.				#(model selectedIndex).
		#hasHeader:.	#(model hasHeader).}