accessing
sortedKeys

	^ [ [ self object keys sorted ] 
		on: Error 
		do: [ "case of non sortable keys" self object keys ]
			] on: Error do: [ #() ]