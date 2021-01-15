# Environment

This training module addresses building custom controls for Business Central using two approaches: 

1. Firstly, to build the control and javascript apart from AL;
1. Secondly, to migrate the javascript and more to a BC instance as an extension

JavaScript widgets and code must be used but teaching either javascript or the myriad controls available in the web exceeds scope and time for superficial training, like this. 

## <a name="docker">Docker</a>
Docker container manager is used to host a Business Central container for AL extension development. The script I use will be shown in the appendix of this document.

I always install the test libraries and scaffolding, although it will be used in a limited way in this training session. AL unit testing tools cannot be used in JavaScript, and the AL testing suite is mostly incompatible with JavaScript. So that won't be a large aspect of this training.

## <a name="git">Git</a>
A Git repository will be used (Tigunia GitHub account), and installing Waldo's AL extension suite will install the VSCode tools needed to work with Git within VSCode.

## <a name="vsc">Visual Studio Code</a>
VS Code is the only IDE used in this training.

