construction
createRoutesFor: aTeapot
	aTeapot
		GET: 'pages' -> [ :req | Page selectAll. ];
		POST: 'login' -> [ :req |  User selectOne: {'email' -> req at: #email}].