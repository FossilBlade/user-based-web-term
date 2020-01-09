# RUN

docker run -itd --rm -v `pwd`/term-start.sh:/term-start.sh -p 8080:7681 tsl0922/ttyd ttyd -a -R bash './term-start.sh'
