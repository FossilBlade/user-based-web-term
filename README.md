# RUN
```
docker run -itd --rm -v `pwd`/user_scripts:/root/bin/NetDetails/ -v `pwd`/term-start.sh:/term-start.sh -p 8080:7681 tsl0922/ttyd ttyd -a -R bash './term-start.sh'
```
# Test

Install required package:
http://3.85.207.1:8080/?arg=apt-get%20-y%20install%20dnsutils%20curl%20%20iputils-ping%3B%20mkdir%20-p%20%2Froot%2Fbin%2FNetDetails%2Fblacklists

Run scripts:
http://3.85.207.1:8080/?arg=chmod%20%2Bx%20%2Froot%2Fbin%2FNetDetails%2F%2A.sh%20%26%26%20cd%20%2Froot%2Fbin%2FNetDetails%2F%20%26%26%20.%2FCIDRDetail.sh%2052.95.252.0%2F24
