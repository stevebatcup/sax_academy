#!/bin/bash -e

bundle check || bundle install

if [ $RAILS_ENV = 'production' ]
then
	echo "Precompiling assets...."
	rails assets:precompile

	echo "Copying assets to NGINX"
	mkdir -p /usr/share/nginx/html
	cp -R public/* /usr/share/nginx/html

	echo "Copying NGINX config"
	mkdir -p /etc/nginx/conf.d/
	cp -R config/nginx.conf /etc/nginx/conf.d/default.conf
fi

if [[ -a /usr/src/app/tmp/pids/server.pid ]]; then
	echo "Removing stale PID file from /usr/src/app/tmp/pids/server.pid...."
	rm /usr/src/app/tmp/pids/server.pid
fi

RUBYOPT='-W:no-deprecated -W:no-experimental' rails s -b 0.0.0.0 -p 4000 -P /usr/src/app/tmp/pids/server.pid