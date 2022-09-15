FROM yanivomc/alpine-oraclejdk8:slim
ENV DBHOST=MYSQL
ENV DBURL=mydb.com
WORKDIR /work/
COPY ./spring-music.jar ./code/spring-music.jar
WORKDIR /work/code/
CMD java -jar -Dspring.profiles.active=none spring-music.jar
