protocol-events
whenFilteringBlockChanged: aBlock
	<api: #event>
	"Set a block to value when the filtering block block has changed"
	
	filteringBlock whenChangedDo: aBlock