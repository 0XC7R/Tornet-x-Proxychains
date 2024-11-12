# Tornet-x-Proxychains
A repo to help users implement system wide proxy chaining using tornet which routes all traffic through tor.

# How to use?

Follow the write up for help:
[medium.com/@0xc7r/](https://medium.com/@0xc7r/using-tornet-w-proxychains-for-a-system-wide-proxy-connection-5df63612c743?postPublishedType=initial)

```bash
git clone https://github.com/0XC7R/Tornet-x-Proxychains # clone it
cd Tornet-x-Proxychains # go to the path we cloned
chmod +x 'installer.sh' # allow us to execute the sh scripts
chmod +x 'setup.sh' # allow us to execute the sh scrips
chmod +x 'edit profile.sh' # user later
chmod +x 'edit proxychain.sh' # used later
sudo ./installer.sh && sudo ./setup.sh # run both scripts with super user
# We run the installer first so we can install needed packages 
# like python3, pip, proxychains etc
```

### Add inside of /etc/profile by running 'edit profile.sh'
```bash
# put at the very very bottom
export LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libproxychains.so.4
export PROXYCHAINS_CONF_FILE=/etc/proxychains.conf
```

### Cant access localhost or 127.0.0.1 servers?
Open your proxychains configuration file and add the following line(s):
```bash
# put directly above '[ProxyList]'
localnet 127.0.0.0/255.0.0.0 # allows you to connect to anything on those ips while keeping you connected to your proxies

```

### Download setup.sh. 
This shell script downloads tornet using pip and creates a new python script for tornet called "tornet.py" at /usr/local/bin/ and will also install python3 if it is not 
installed same for pip.

### Testing after successful run of installer/setup
```bash
curl -X GET https://api.ipify.org # request our ip from the api
# Example output 192.168.0.154
```
Compare your ip to the one outputted from curl.

<hr>

### Issue running setup.sh?
If there is an issue with running setup.sh download the tornet.py script and put it at /usr/local/bin your self.

### Issue running the installer.sh
Make sure you have sufficent perms to run. This will install tornet, python3, pip and also proxychains package. If you cannot install any of those packages please configure your apt source and then come back.
