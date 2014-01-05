initialization
initialize
	super initialize.

	childrenBlockHolder := [ {} ] asValueHolder.
	rootsHolder := {} asValueHolder.
	selectionHolder := {} asValueHolder.
	menuBlockHolder := [] asValueHolder.
	displayBlock := [:item | item asString ] asValueHolder.
	
	removeOnlyLastSelected := false asValueHolder.
	autoDeselection := true asValueHolder.
	autoMultiSelection := false asValueHolder.
	columnInset := 5 asValueHolder.
	doubleClick := [] asValueHolder.
	allowMenuOnNoItem := false asValueHolder.
	evenRowColor := Color veryLightGray muchLighter asValueHolder.
	isCheckList := false asValueHolder.
	keyStroke := [ :key | ] asValueHolder.
	multiSelection := false asValueHolder.
	oddRowColor := Color white asValueHolder.
	preferedPaneColor := Color white asValueHolder.
	resizerWidth := 2 asValueHolder.
	rowInset := 2 asValueHolder.
	iconBlock := [ :each : node | node icon ] asValueHolder.
	highlightedItem := nil asValueHolder.
	rootNodeHolder := [ :item |
		TreeNodeModel new 
			content: item;
			children: [ self childrenFor: item ] ] asValueHolder.
	
	columns := { TreeColumnModel new
		displayBlock: [:node | (self wrapItem: node content) ] } asValueHolder.
	
	"Since my nodes are already morphs, dragging them will actually extract them from their owner"
	dragTransformationBlock := [ :item :source | item complexContents ] asValueHolder.

	treeUpdated := nil asValueHolder.

	self registerEvents