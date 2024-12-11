FROM alpine
RUN apk add openjdk17
ENV PATH $PATH:/usr/lib/jvm/java-17-openjdk/bin
WORKDIR usr/share/udemy
ADD Test.java Test.java
ENTRYPOINT javac Test.java && java Test