protocol
add: newObject before: oldObject
	
	| result |
	result := contents add: newObject before: oldObject.
	self contentsChanged: newObject.
	^ result