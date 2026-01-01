# 选择一个 JRE 运行时（只跑，不编译）
FROM liferay/jdk21

WORKDIR /app

# 把本地 jar 拷进去（你需要把 jar 重命名为 app.jar 或改这里的名字）
COPY target/demo-aot-native-0.0.1-SNAPSHOT.jar /app/app.jar

# Spring Boot Web 默认 8080
EXPOSE 8080

# 可选：给 JVM 一些常用参数（按需改）
ENTRYPOINT ["java","-jar","/app/app.jar"]
