accessing
initialize
	claims := OrderedCollection new.
	encoder := ZnBase64Encoder new.
	hashFunction := SHA256 new.
	self initializeHMAC .