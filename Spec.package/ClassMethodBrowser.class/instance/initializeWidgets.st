initialization
initializeWidgets

	self instantiateModels: #(
		listModel ListComposableModel
		methodModel MethodBrowser ).
	
	self focusOrder
		add: listModel;
		add: methodModel.
	
	methodModel displayBlock: [:method | method selector ].