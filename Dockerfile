FROM perl:latest

Label maintainer="Noel Kuntze <noel@familie-kuntze.de>"

RUN mkdir -p /opt/maxine
COPY software/ /opt/maxine
RUN rm /opt/maxine/conf/*
WORKDIR /opt/maxine/
CMD ["/usr/local/bin/perl", "/opt/maxine/maxine"]

RUN cpan -i DBI DBD::mysql
# run as nobody
USER 99