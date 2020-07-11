FROM tomcat:8.0

ADD **/*.war C:\apache-tomcat-docker\webapps

EXPOSE 8080

CMD ["catalina.sh", "run"]