FROM ruby:2.7

RUN apt-get update -yqq \
		&& apt-get install -yqq --no-install-recommends \
		postgresql-client vim nodejs \
		&& rm -rf /var/lib/apt/lists

ENV BUNDLE_PATH /gems
ENV APP_NAME sax_academy
ENV APP_PATH /usr/src/app
ENV PATH $APP_PATH/bin:$PATH

WORKDIR $APP_PATH

ADD . $APP_PATH

EXPOSE 4000
CMD ./lib/docker-entrypoint.sh