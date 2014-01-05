protocol
openWithSpecLayout: aSpec
	"Build the widget using the spec name provided as argument and display it into a window"

	(window notNil and: [ self needRebuild not ])
		ifFalse: [ 
			window := WindowModel new model: self.
			window openWithSpecLayout: aSpec.
			self takeKeyboardFocus ]
		ifTrue: [
			self needRebuild: true.
			window rebuildWithSpecLayout: aSpec ].
		
	^ window