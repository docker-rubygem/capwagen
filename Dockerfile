FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.0.5

RUN gem install capwagen --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["capwagen"]
CMD ["--help"]
