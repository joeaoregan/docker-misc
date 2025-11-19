# First container attempt
FROM ubuntu
LABEL version="1.0"
LABEL description="docker test container"
LABEL authors="Joe O'Regan"

USER root
COPY ./server.bash /

RUN chmod 755 /server.bash
RUN apt -y update
RUN apt -y install bash netcat

USER nobody

ENTRYPOINT [ "/server.bash" ]
