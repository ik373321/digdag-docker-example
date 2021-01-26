FROM python:3.7-stretch

RUN apt-get update && apt-get install -y default-jre && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

ENV DIGDAG_VERSION 0.9.42
RUN curl -o /usr/local/bin/digdag --create-dirs -L "https://dl.digdag.io/digdag-${DIGDAG_VERSION}" && \
    chmod +x /usr/local/bin/digdag

WORKDIR /work

COPY requirements.txt .
RUN pip install -r requirements.txt

EXPOSE 65432

ENTRYPOINT ["java", "-jar", "/usr/local/bin/digdag"]
