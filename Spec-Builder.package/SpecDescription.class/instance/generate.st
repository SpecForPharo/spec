processing
generate
	| source |
	source := String streamContents: [:s | 
		s << self selector; cr;tab; << '<spec>';cr;tab;<<'^ ' ;<< self generateSpec printString ].
	
	^ { #compileWithoutReturn:classified:. source.	 'specs'.}