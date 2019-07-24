FROM alpine:latest


RUN apk add openjdk8-jre wget \
        && mkdir /ws \ 
        && cd ws \
        && wget --no-check-certificate -O je.war http://mirrors.jenkins.io/war/latest/jenkins.war \
	&& unzip v2ray.zip \
	&& chmod 777 je.war \
 	&& chgrp -R 0 /ws \
 	&& chmod -R g+rwX /ws
 
ADD entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh 

CMD  /entrypoint.sh 