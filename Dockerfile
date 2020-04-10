FROM openjdk:10-jre-slim

RUN apt-get update \
    && apt-get install wget -y \
    && wget -q https://sourceforge.net/projects/jpdfbookmarks/files/JPdfBookmarks-2.5.2/jpdfbookmarks-2.5.2.tar.gz \
    && tar -zxvf jpdfbookmarks-2.5.2.tar.gz \
    && mv jpdfbookmarks-2.5.2 /usr/local/share \
    && cd /usr/local/bin \
    && ln -s /usr/local/share/jpdfbookmarks-2.5.2/link_this_in_linux_path.sh jpdfbookmarks \
    && ln -s /usr/local/share/jpdfbookmarks-2.5.2/link_this_in_linux_path_cli.sh jpdfbookmarks_cli

VOLUME  /workspace
WORKDIR /workspace

CMD [ "jpdfbookmarks" ]
