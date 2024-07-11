FROM alpine:3.9
RUN apk add python2 py-pip fping
WORKDIR /opt
COPY ping-exporter.py /opt/ping-exporter.py
ENV PORT=80
CMD ["sh", "-c", "python2 /opt/ping-exporter.py -p ${PORT}"]