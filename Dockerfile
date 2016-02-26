FROM debian:jessie
MAINTAINER Leif Madsen <leif@leifmadsen.com>
ENV REFRESHED_AT 2016-02-26
ENV HOMER_UI_PATH /var/www/html

RUN mkdir -p $HOMER_UI_PATH
COPY index.html $HOMER_UI_PATH
COPY css/ $HOMER_UI_PATH/css
COPY fonts/ $HOMER_UI_PATH/fonts
COPY img/ $HOMER_UI_PATH/img
COPY js/ $HOMER_UI_PATH/js
COPY lib/ $HOMER_UI_PATH/lib
COPY share/ $HOMER_UI_PATH/share
COPY store/ $HOMER_UI_PATH/store
COPY templates/ $HOMER_UI_PATH/templates

VOLUME [ $HOMER_UI_PATH ]
CMD [ "echo", "HOMER UI DVC" ]
