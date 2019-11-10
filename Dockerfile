FROM openjdk
MAINTAINER Jarek Krochmalski <jarek@finsys.pl>
ADD target/account.jar account.jar
ENTRYPOINT ["java", "-jar", "/account.jar"]
EXPOSE 8585