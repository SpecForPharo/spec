importing
import: aSpec

	| copy first |
	copy := aSpec asOrderedCollection copy.
	first := copy removeFirst.
	first = #model
		ifTrue: [ ^ self import: copy ].
	first = #subclass:category:
		ifTrue: [ | category name | 
			name := copy removeFirst.
			category := copy removeFirst.
			desc addClassDescription: (AddClassDescription category: category name: name).
			^ self import: copy ].
	first = #addInstVarNamed:type:
		ifTrue: [ 
			desc addInstVarDescriptions add: (AddInstVarDescription name: copy removeFirst type: copy removeFirst).
			^ self import: copy ].
	first = #compileWithoutReturn:classified:
		ifTrue: [ | category source |
			source := copy removeFirst.
			category := copy removeFirst.
			desc addMethodDescriptions add: (AddMethodDescription category: category source: source).
			^ self import: copy ].
	first = #addSourceCode:into:
		ifTrue: [
			desc addIntoMethodDescriptions add: (AddIntoMethodDescription code: copy removeFirst order: order selector: copy removeFirst).
			order := order +1.
			^ self import: copy ].
	first = #theMetaClass
		ifTrue: [ | source index newSpec |
			"for now I only compile method on class side"
			copy removeFirst.
			source := copy removeFirst.
			index := source indexOf: ${.
			source := source copyFrom: index to: source size.
			newSpec := self class compiler evaluate: source.
			desc specDescription: (SpecDescriptionImporter import: newSpec).
			^ self import: copy ].
	^ desc.