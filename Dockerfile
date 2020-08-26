FROM tezign.com:5000/jdk:1.8_202

ENV VERSION=3.6.3

WORKDIR /opt
RUN wget https://mirrors.tuna.tsinghua.edu.cn/apache/maven/maven-3/${VERSION}/binaries/apache-maven-${VERSION}-bin.tar.gz && \
    tar -xf apache-maven-${VERSION}-bin.tar.gz && \
    ln -s /opt/apache-maven-${VERSION}/bin/mvn /bin/mvn && \
    rm -rf apache-maven-${VERSION}-bin.tar.gz
