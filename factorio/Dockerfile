FROM base

RUN apt-get install nano
RUN adduser factorio 
ADD factorio_headless*.tar.* /
RUN mkdir -p /factorio/saves && chown -R factorio:factorio /factorio
RUN chown -R factorio:factorio /factorio
WORKDIR /factorio
ADD server-settings.json /factorio/data/
ADD start-*.sh /factorio/
COPY FactorioContest_0.0.2.zip /factorio/mods/
ADD Contest-1-Electronic-Circuit/  /factorio/scenarios/Contest-1-Electronic-Circuit/
USER factorio
CMD ["/factorio/start-factorio.sh"]
