list
addSpecialFields: elements

	elements add: (DynamicEyeElement 
			host: self object 
			label: 'hex' 
			value: [ self object hex ]).
			
	elements add: (DynamicEyeElement 
			host: self object 
			label: 'octal' 
			value: [ self object printStringBase: 8 ]).
			
	elements add: (DynamicEyeElement 
			host: self object 
			label: 'binary' 
			value: [ self object printStringBase: 2 ]).