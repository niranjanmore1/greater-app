FROM eclipse-temurin:17-jdk
WORKDIR /app
COPY Greater.java .
RUN javac Greater.java
CMD ["java", "Greater"]
