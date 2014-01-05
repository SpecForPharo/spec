protocol
setSelectedIndex: anIndex
	<api: #integer min: 0 max: #listSize getter: #selectedIndex registration: #whenSelectionIndexChanged:>
	"Set the index of the item you want to be selected"
	
	self widget
		ifNil: [ selectedIndex contents: anIndex ]
		ifNotNil: [ :widget | widget setIndex: anIndex ]