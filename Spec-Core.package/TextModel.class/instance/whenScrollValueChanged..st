protocol-events
whenScrollValueChanged: aBlock
	<api: #event>
	"Set a block to perform when the scroll value changed"
	
	scrollValue whenChangedDo: aBlock