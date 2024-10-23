FROM maven:3.6.3-openjdk-17
RUN mkdir job4j_docker_example
WORKDIR job4j_docker_example
COPY . .
RUN mvn install
CMD ["java", "-jar", "target/main.jar"]