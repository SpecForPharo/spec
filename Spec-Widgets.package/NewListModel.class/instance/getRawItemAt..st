list protocol
getRawItemAt: index

	^ items contents at: index ifAbsent: [ nil ]