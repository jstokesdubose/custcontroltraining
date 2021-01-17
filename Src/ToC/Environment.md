# Environment

This training module addresses building custom controls for Business Central using two approaches: 

Since Business Central is used, this tutorial leverages a BC container inside of Docker

## <a name="docker">Docker</a>
Docker container manager is used to host a Business Central container for AL extension development. The script I use will be shown in the appendix of this document.

I always install the test libraries and scaffolding, although it will be used in a limited way in this training session. AL unit testing tools cannot be used in JavaScript, and the AL testing suite is mostly incompatible with JavaScript. So that won't be a large aspect of this training.

## <a name="git">Git</a>
A Git repository will be used (Tigunia GitHub account), and installing Waldo's AL extension suite will install the VSCode tools needed to work with Git within VSCode.

## <a name="vsc">Visual Studio Code</a>
VS Code is the only IDE used in this training.

In addition to the AL-code add-ins, one more is recommended: 
[Live Server](https://marketplace.visualstudio.com/items?itemName=ritwickdey.LiveServer), with it's familiar *GoLive* button in the bottom of the VS Code window.
