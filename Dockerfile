FROM ubuntu:18.04 AS build

RUN yes | apt-get update
RUN yes | apt-get upgrade
RUN yes | apt-get install openjdk-8-jdk-headless
RUN java -version

COPY . /src
RUN cd /src && ./gradlew clean build installDist


FROM ubuntu:18.04

RUN yes | apt-get update
RUN yes | apt-get upgrade
RUN yes | apt-get install openjdk-8-jdk-headless

COPY --from=build /src/build/install/hello-jib hello-jib
WORKDIR .

CMD ["hello-jib/bin/hello-jib"]

