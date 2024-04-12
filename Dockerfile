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
    libdevil-dev \
    libtiff5-dev \
    libboost-dev \
    cmake \
    g++

RUN rm -rf /var/lib/apt/lists/*

WORKDIR /home/dev
