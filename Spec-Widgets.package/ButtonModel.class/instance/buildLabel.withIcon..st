private
buildLabel: text withIcon: icon
	
	^ IconicListItem new
		morph:	text asMorph;
		icon: (AlphaImageMorph new image: icon);
		yourself