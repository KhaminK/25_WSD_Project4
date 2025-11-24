FROM tomcat:9.0

COPY target/W25_22400386_1.war /usr/local/tomcat/webapps/ROOT.war

CMD ["catalina.sh", "run"]
