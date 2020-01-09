# RUN
```
docker run -itd --rm -v `pwd`/user_scripts:/root/bin/NetDetails/ -v `pwd`/term-start.sh:/term-start.sh -p 8080:7681 tsl0922/ttyd ttyd -a -R bash './term-start.sh'
```
# Test

http://3.85.207.1:8080/?arg=chmod%20%2Bx%20%2Froot%2Fbin%2FNetDetails%2F%2A%20%26%26%20%2Froot%2Fbin%2FNetDetails%2FCIDRDetail.sh%20192.0.2.0%2F24
