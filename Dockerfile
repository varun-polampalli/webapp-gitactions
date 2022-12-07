FROM tomcat:jre11
COPY  --from=build /webapp/target/my.war /usr/local/tomcat/webapps/
EXPOSE 8080
VOLUME /usr/local/tomcat
ENTRYPOINT ["catalina.sh", "jpda","run"]
