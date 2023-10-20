FROM gradle:7.6.1-jdk17-alpine
ENTRYPOINT ["/usr/bin/testappdocker.sh"]

COPY testappdocker.sh /usr/bin/testappdocker.sh
COPY target/testappdocker.jar /usr/share/testappdocker/testappdocker.jar

EXPOSE 3000
CMD ["gradle", "bootRun"]