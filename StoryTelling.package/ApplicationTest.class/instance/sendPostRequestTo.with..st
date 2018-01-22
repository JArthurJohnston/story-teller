tests
sendPostRequestTo: aUrlString with: aJsonString
	^ znClient post: testUrl , aUrlString contents: aJsonString 