construction
createRoutesFor: aTeapot
	aTeapot
		after: '*' -> [ :req :res | self handleCorsPreflight: req withResponse: res ];
		GET: 'pages' -> [ :req | Page selectAll ];
		POST:
			'login'
				-> [ :req | 
					| loginJson email |
					loginJson := NeoJSONReader fromString: req entity.
					email := loginJson at: #email.
					User selectOne: (Array with: 'email' -> email).
					'hkjhafkhsdkhaksdh2134124h2k2k4hkjhkj4kj23h41k2h3' ]