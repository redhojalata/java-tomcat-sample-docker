FROM tomcat:8.0

ADD **/*.war C:\apache-tomcat-8.5.56\webapps

EXPOSE 8080

CMD ["catalina.sh", "run"]