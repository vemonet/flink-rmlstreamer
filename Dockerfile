FROM flink:1.10.1-scala_2.11

LABEL maintainer "Vincent Emonet <vincent.emonet@maastrichtuniversity.nl>"

# ARG version=1.2.3
# ${version}

ADD https://github.com/RMLio/RMLStreamer/releases/download/v2.0.0/RMLStreamer-2.0.0.jar /opt/RMLStreamer.jar
# TODO: use arg when the mismatch between release and version has been fixed