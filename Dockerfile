FROM alpine
MAINTAINER Simon Kaczor <skaczor@prognosoft.biz>

RUN apk update && \
    apk upgrade && \
    apk add ruby ruby-rdoc ruby-libs ruby-irb ruby-bigdecimal ruby-json ruby-io-console ruby-bundler

RUN gem install sinatra

ADD service /srv/service
WORKDIR /srv/service
EXPOSE 4567
ENV RACK_ENV=production
ENTRYPOINT ruby service.rb