FROM alpine:latest
LABEL maintainer="gwaewion@gmail.com"
COPY squid.conf /squid/
COPY credentials /squid/
EXPOSE 3128

RUN apk update && apk add squid 

CMD ["squid", "-f", "/squid/squid.conf", "-N"]
