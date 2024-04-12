FROM arogov/astra-linux-orel:2.12

# Install build-essential and Qt 5
RUN apt-get update && \
  apt-get -y --no-install-recommends install \
    build-essential \
    qt5-default \
    qtdeclarative5-dev \
    qml-module-qtquick-controls \
    libqt5serialport5-dev \
    qtscript5-dev \
    zlib1g-dev \
    libtiff5-dev \
    libboost-dev \
    cmake \
    g++ \
    git \
    mc


ADD csp/linux-amd64_deb.tgz /root

RUN <<EOF
cd /root/linux-amd64_deb
./install.sh kc1 lsb-cprocsp-devel
cd /root
rm -rf ./linux-amd64_deb

ln -s /home/administrator /home/dev 
EOF

ENV PATH=$PATH:/opt/cprocsp/bin/amd64:/opt/cprocsp/sbin/amd64

RUN sed -i '/ru_RU.UTF-8/s/^# //g' /etc/locale.gen && \
    locale-gen
ENV LANG ru_RU.UTF-8
ENV LANGUAGE ru_RU:en
ENV LC_ALL ru_RU.UTF-8

USER administrator
WORKDIR /home/dev/work
