tests
sendPostRequestTo: aUrlString with: aJsonString
	^ znClient post: aUrlString contents: aJsonString 