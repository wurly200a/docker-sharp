FROM node:21

RUN apt update
RUN apt install -y cmake gtk-doc-tools gobject-introspection
RUN apt install -y meson

#RUN apt purge -y x265
RUN apt purge -y libheif1 libheif-dev

RUN apt install -y libexpat1-dev
RUN apt install -y libglib2.0-dev
RUN apt install -y liblcms2-dev
RUN apt install -y libgsf-1-dev
RUN apt install -y liborc-0.4-dev
RUN apt install -y libx265-dev
RUN apt install -y libde265-dev
RUN apt install -y libexif-dev
#RUN apt install -y libheif-dev

# install x265
# WORKDIR /home/node
# RUN git clone https://github.com/videolan/x265.git
# WORKDIR /home/node/x265/build
# RUN cmake ../source
# RUN make
# RUN make install

# install libheif
WORKDIR /home/node
#RUN git clone https://github.com/strukturag/libheif.git -b v1.13.0
RUN git clone https://github.com/strukturag/libheif.git
WORKDIR /home/node/libheif
RUN mkdir build
WORKDIR /home/node/libheif/build
RUN cmake --preset=release ..
RUN make
RUN make install
RUN ldconfig

## install libvips
WORKDIR /home/node

#RUN git clone https://github.com/libvips/libvips.git -b v8.13.0
#RUN git clone https://github.com/libvips/libvips.git
#WORKDIR /home/node/libvips
#RUN meson setup build --prefix /usr/bin
#RUN meson setup build
#WORKDIR /home/node/libvips/build
#RUN meson compile
#RUN meson test
#RUN meson install

RUN curl -LO https://github.com/libvips/libvips/releases/download/v8.11.3/vips-8.11.3.tar.gz
RUN tar -zxf vips-8.11.3.tar.gz
WORKDIR /home/node/vips-8.11.3
RUN ./autogen.sh
RUN ./configure
RUN make
RUN make install
#
#RUN ldconfig
#RUN npm install sharp



