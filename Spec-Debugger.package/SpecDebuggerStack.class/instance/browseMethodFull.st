actions browsing
browseMethodFull
	"Create and schedule a full Browser and then select the current class and message."

	self currentClassOrMetaClass ifNotNil: [ 
		Smalltalk tools browser 
			fullOnClass: self currentClassOrMetaClass
			selector: self currentMessageName ]