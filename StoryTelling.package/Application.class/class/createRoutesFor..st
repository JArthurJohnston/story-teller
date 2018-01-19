construction
createRoutesFor: aTeapot
	aTeapot
		GET: 'pages' -> [ :req | Page selectAll. ];
		POST:
			'login'
				-> [ :req | 
					| loginJson email |
					loginJson := NeoJSONReader fromString: req entity.
					email := loginJson at: #email.
					User selectOne: {('email' -> email).}. 
					'hkjhafkhsdkhaksdh2134124h2k2k4hkjhkj4kj23h41k2h3'].