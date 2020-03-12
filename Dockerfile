#FROM target/flottbot:latest
FROM dpritchett/flottbot:dev-latest

ADD ./config /config

CMD ["/flottbot"]
