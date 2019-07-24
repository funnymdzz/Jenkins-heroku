cd /ws
java -Djava.awt.headless=true -jar je.war --httpPort=$PORT --ajp13Port=-1 --httpsPort=-1
