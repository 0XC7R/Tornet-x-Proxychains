# Tornet-x-Proxychains
A repo to help users implement system wide proxy chaining using tornet which routes all traffic through tor.

# How to use?

### Download setup.sh. 
This shell script downloads tornet using pip and creates a new python script for tornet called "tornet.py" at /usr/local/bin/ and will also install python3 if it is not 
installed same for pip.

<hr>

### Issue running setup.sh?
If there is an issue with running setup.sh download the tornet.py script and put it at /usr/local/bin your self.

### Issue running the installer.sh
Make sure you have sufficent perms to run. This will install tornet, python3, pip and also proxychains package. If you cannot install any of those packages please configure your apt source and then come back.
