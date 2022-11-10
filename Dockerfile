FROM tomcat:jre11
COPY ./target/my.war /usr/local/tomcat/
EXPOSE 8080
VOLUME /usr/local/tomcat
ENTRYPOINT ["catalina.sh", "jvm","run"]
