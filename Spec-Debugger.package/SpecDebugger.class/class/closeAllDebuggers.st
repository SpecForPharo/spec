utilities
closeAllDebuggers
	"SpecDebugger closeAllDebuggers"
	(SystemWindow allSubInstances select: [:w | 
		(w model isKindOf: WindowModel) and: [ 
			w model model isKindOf: self ]  ])
			do: [:w | w delete ]