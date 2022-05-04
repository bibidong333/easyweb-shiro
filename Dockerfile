#指定基础镜像
FROM java:8

#维护者
MAINTAINER MADI

#将本地文件添加到容器中，更名为easyweb-shiro
COPY easyweb-shiro-0.0.1-SNAPSHOT.jar easyweb-shiro.jar

#指定与外界交互的端口
EXPOSE 9090

#容器启动时，运行该程序
ENTRYPOINT ["java","-jar","easyweb-shiro.jar"]