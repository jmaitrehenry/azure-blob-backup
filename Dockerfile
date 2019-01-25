FROM microsoft/dotnet:2.1-runtime-alpine

WORKDIR /root

RUN apk add --no-cache bash rsync \
  && wget -O azcopy.tar.gz https://aka.ms/downloadazcopyprlinux \
  && tar -xzf azcopy.tar.gz \
  && ./install.sh \
  && rm -rf azcopy install.sh

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
CMD /usr/local/bin/entrypoint.sh
