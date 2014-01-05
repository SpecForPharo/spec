protocol
selectedItem
	< api: #inspect>
	"Return the selected item"
	"In the case of a multiple selection list, it returns the last selected item"
	
	^ treeModel selectItems 
		ifEmpty: [ nil ]
		ifNotEmpty: [ :collection | collection last ]