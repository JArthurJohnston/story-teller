# story-teller

# Environment Setup

1	Download and unzip the latest version of Pharo smalltalk. Once downloaded run the pharo shell script.
2	Once inside the image, open a playground and run the following to download the teapot REST library
``
Gofer it
smalltalkhubUser: 'zeroflag' project: 'Teapot'; configuration;
loadStable.
``

3	Test teapot by running the following in a playground to run a server
``
teapot := Teapot on
	GET: '/welcome' -> 'Hello World!'; 
	start.
``
4	Navigate to localhost:1701. If all is working you should see 'Hello 'World'
5	In the same playground window, run the following to stop the server 
``teapot stop.``

