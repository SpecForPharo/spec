protocol
openWithSpec

	super openWithSpec.
	self updateTitle.
	textModel text: textModel getText.
	^ window