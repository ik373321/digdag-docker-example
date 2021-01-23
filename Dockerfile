FROM python:3.7-stretch

RUN apt update && apt install -y default-jre

ENV DIGDAG_VERSION 0.9.42
RUN curl -o /usr/local/bin/digdag --create-dirs -L "https://dl.digdag.io/digdag-${DIGDAG_VERSION}" && \
    chmod +x /usr/local/bin/digdag

WORKDIR /work

EXPOSE 65432

ENTRYPOINT ["java", "-jar", "/usr/local/bin/digdag"]
CMD ["server", "-m", "-b", "0.0.0.0"]
