# RUN
```
docker run -itd --rm -v `pwd`/user_scripts:/user_scripts/ -v `pwd`/term-start.sh:/term-start.sh -p 8080:7681 tsl0922/ttyd ttyd -a -R bash './term-start.sh'
```
# Test

http://3.85.207.1:8080/?arg=chmod%20%2Bx%20user_scripts%2FCIDRDetail.sh%20%26%26%20user_scripts%2FCIDRDetail.sh%20192.0.2.0%2F24
