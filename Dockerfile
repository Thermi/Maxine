FROM perl:latest

Label maintainer="Noel Kuntze <noel@familie-kuntze.de>"

RUN mkdir -p /opt/maxine
COPY software/ /opt/maxine
WORKDIR /opt/maxine/
CMD ["/usr/local/bin/perl", "/opt/maxine/maxine"]

RUN cpan -i DBI DBD::mysql