FROM adoptopenjdk/openjdk11:ubi
ARG JAR_FILE=target/*.jar
ENV BOT_NAME=alexx_first_bot
ENV BOT_TOKEN=5381821812:AAGCCm5H2v8KXfKmr0dtwmcunJL7zlD-zrc
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-Dbot.username=${BOT_NAME}", "-Dbot.token=${BOT_TOKEN}", "-jar", "/app.jar"]