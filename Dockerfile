FROM perl:latest

Label maintainer="Noel Kuntze <noel@familie-kuntze.de>"

# Store everything in /opt
RUN mkdir -p /opt/maxine

COPY software/ /opt/maxine
WORKDIR /opt/maxine/
CMD ["/opt/maxine/maxine"]

RUN cpanm DBI