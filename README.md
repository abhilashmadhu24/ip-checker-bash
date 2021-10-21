# ip-checker-bash

Simple bash script which can be used to find IP/hostname details with the help of ipinfo.io APIs. This can be used as a custom command for your Command Line Interfaces as well as sub-application to other monitoring tools.

```
git clone https://github.com/abhilashmadhu24/ip-checker-bash.git
cd ip-checker-bash/
mv ip-check.sh /usr/bin/ip-check
chmod +x /usr/bin/ip-check
```

# OUTPUTS

```
root@abhilash:~#ip-check

        Enter IP/HOSTNAME:web.whatsapp.com

IP ADDRESS: 157.240.228.60
STATIC HOSTNAME: whatsapp-cdn-shv-01-tir2.fbcdn.net
COUNTRY: TW
REGION: Taiwan
ORGANIZATION: Facebook Inc.
LOCATION CORDINATES: 23.9769 121.6044
TIME-ZONE: Asia/Taipei

root@abhilash:~#ip-check

        Enter IP/HOSTNAME:18.220.228.255

IP ADDRESS: 18.220.228.255
STATIC HOSTNAME: ec2-18-220-228-255.us-east-2.compute.amazonaws.com
COUNTRY: US
REGION: Ohio
ORGANIZATION: Amazon.com Inc.
LOCATION CORDINATES: 40.0334 -83.1582
TIME-ZONE: America/New_York
```
