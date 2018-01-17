construction
createRoutesFor: aTeapot
	aTeapot GET: 'pages' -> [ :req | Page allInstances ].