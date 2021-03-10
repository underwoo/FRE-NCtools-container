## simple container with fre-nctools dependencies for compilation/testing
FROM ubuntu:xenial
# add nccmp repo and install dependencies 
RUN apt-get update \
 && apt-get -y install software-properties-common \
 && add-apt-repository ppa:remik-ziemlinski/nccmp --update \
 && apt-get install -y libnetcdf-dev libnetcdff-dev netcdf-bin gfortran bats \
                       nccmp autoconf libopenmpi-dev openmpi-bin
