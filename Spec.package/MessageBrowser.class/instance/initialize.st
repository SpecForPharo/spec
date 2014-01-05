initialization
initialize
	"Initialization code for MessageBrowser"

	textConverterHolder := SourceMethodConverter new asValueHolder.
	model := AbstractTool new.
	maxClassSize = nil.
	searchedStringHolder := '' asValueHolder.
	titleHolder := super title asValueHolder.
	topologicSortHolder := true asValueHolder.
	super initialize.
	
	self registerToAnnouncements.
	self bindings: MorphicBindingsWithSplitters new.