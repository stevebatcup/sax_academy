FROM ruby:2.7

ENV RUBYOPT '-W:no-deprecated  -W:no-experimental'

RUN apt-get update -yqq \
		&& apt-get install -yqq --no-install-recommends \
		postgresql-client vim nodejs \
		&& rm -rf /var/lib/apt/lists

ENV BUNDLE_PATH /gems
ENV app /usr/src/app

WORKDIR $app

ADD . $app

EXPOSE 4000
CMD ./lib/docker-entrypoint.sh