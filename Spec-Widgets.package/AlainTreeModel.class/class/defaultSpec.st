specs
defaultSpec
	<spec:#default>
	
	^ {#MorphTreeMorph.
		#model:.  		#(model treeModel).
		
		#initializeColumsFrom:. #(model).
		#hResizing:. 	#spaceFill.
		#vResizing:.	#spaceFill.
		#resizerWidth:.	#(model resizerWidth).
		#columnInset:. #(model columnInset).
		#rowInset:.		#(model rowInset).
		#keystrokeActionSelector:. #keyStroke:.
		#preferedPaneColor:. #(model preferedPaneColor).
		#multiSelection:.	#(model multiSelection).
		#autoMultiSelection:.	#(model autoMultiSelection).
		#isCheckList:. #(model isCheckList).
		#doubleClickSelector:. #doubleClick.
		#getMenuSelector:. #menu:shifted:.
		#rowColorForEven:odd:. #(model evenRowColor). #(model oddRowColor). 
		
		#buildContents }