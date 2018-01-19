# story-teller

# Environment Setup

**Pharo Dependencies**

1.	Install libcairo
	``sudo apt-get install libcairo2:i386``

**Installing Teapot**

1.	Download and unzip the latest version of Pharo smalltalk. Once downloaded run the pharo shell script.
2.	Once inside the image, open a playground (Ctrl+O+W) and run the following to download the teapot REST library:

	``
	Gofer it
		smalltalkhubUser: 'zeroflag' project: 'Teapot'; 
		configuration;
		loadStable.
	``
	You should see some loading windows flash in the upper left corner of the image.


3.	Test teapot by running the following in a playground to run a server.

	``
	teapot := Teapot on
		GET: '/welcome' -> 'Hello World!'; 
		start.
	``

4.	Navigate to localhost:1701. If all is working you should see 'Hello 'World'
5.	In the same playground window, run the following to stop the server.

	``teapot stop.``

**Installing GitFileTree**

1.	Open the Catalog Browser. Single click anywhere in the image (on the background, not a window) and select Tools>Catalog Browser.
2.	Search for 'GitFileTree'. It should appear in the Available List.
3.	Right click on it and select 'Install stable version'. You'll see some loading dialogs flash in the upper left corner of the image. Once they've finished, you're done.

**Installing MongoDB and Voyage***

1.	Install VoyageMongo using the Catalog browser.

2.	Install mongodb on your machine following the instructions listed here:
	https://docs.mongodb.com/manual/tutorial/install-mongodb-on-ubuntu/


**Pulling in the Source Code**

*Make sure you don't have any un-commited changes

1.	Open the Monticello Browser (Ctrl+O+P)
2.	Click the +Repository button
3.	Select gitfiletree://
4.	Navigate to the folder with the repository and click ok. Pharo should open a repository browser.
5.	In the right panel, you should see a list of changes. Select the last one and click Load
6.	Open the system browser (Crtl+O+B) and search for StoryTelling in the package list.
7.	Expand the package, right click on the Tests tag, and select run tests. They should all be green.

**Commiting Code**

1.	Right click on your package (the StoryTelling package) in the system browser and select commmit in > the GitFileTree repo.
2.	In the next dialog, type your commit message and click accept.
3.	You'll get another dialog sumarizing your commit, you can close it.

Enjoy smalltalking!

PS. Just use the command line to commit & push code. The usual git commands will work fine, push, pull, rebase, etc...
