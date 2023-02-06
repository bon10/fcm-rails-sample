FROM ruby:3.0.1

ENV LANG C.UTF-8

RUN apt-get update -qq && \
    apt-get install -y build-essential \
                       nodejs npm \
    && rm -rf /var/lib/apt/lists/* \
    && npm install yarn -g

ENV APP_ROOT /app
WORKDIR $APP_ROOT

RUN gem install bundler

CMD ["bash"]
