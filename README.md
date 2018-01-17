# story-teller

# Environment Setup


---Installing Teapot---

1	Download and unzip the latest version of Pharo smalltalk. Once downloaded run the pharo shell script.
2	Once inside the image, open a playground (Ctrl+O+W) and run the following to download the teapot REST library:

``
Gofer it
	smalltalkhubUser: 'zeroflag' project: 'Teapot'; 
	configuration;
	loadStable.
``
	You should see some loading windows flash in the upper left corner of the image.


3	Test teapot by running the following in a playground to run a server.

``
teapot := Teapot on
	GET: '/welcome' -> 'Hello World!'; 
	start.
``

4	Navigate to localhost:1701. If all is working you should see 'Hello 'World'
5	In the same playground window, run the following to stop the server.

``teapot stop.``

---Installing GitFileTree---
1.	Open the Catalog Browser. Single click anywhere in the image (on the background, not a window) and select Tools>Catalog Browser.
2.	Search for 'GitFileTree'. It should appear in the Available List.
3.	Right click on it and select 'Install stable version'. You'll see some loading dialogs flash in the upper left corner of the image. Once they've finished, you're done.


---Pulling in the Source Code---

**Make sure you don't have any un-commited changes**

1.	Open the Monticello Browser (Ctrl+O+P)
2.	Click the +Repository button
3.	Select gitfiletree://
4.	Navigate to the folder with the repository and click ok. Pharo should open a repository browser.
5.	In the left panel, you should see the StoryTelling Package. Select it and click pull
