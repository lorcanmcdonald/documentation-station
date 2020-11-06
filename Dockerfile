FROM debian:stretch-slim
RUN apt-get update && \
  apt-get install -y \
    gnuplot \
    graphviz \
    inotify-tools \
    pandoc \
    python
ADD src/ /opt/documentation-station/
WORKDIR /workdir
CMD /opt/documentation-station/script/dev
