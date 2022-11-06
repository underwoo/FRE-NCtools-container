#***********************************************************************
#                   GNU Lesser General Public License
#
# This file is part of the GFDL FRE NetCDF tools package (FRE-NCTools).
#
# FRE-NCTools is free software: you can redistribute it and/or modify it under
# the terms of the GNU Lesser General Public License as published by
# the Free Software Foundation, either version 3 of the License, or (at
# your option) any later version.
#
# FRE-NCTools is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
# FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
# for more details.
#
# You should have received a copy of the GNU Lesser General Public
# License along with FRE-NCTools.  If not, see
# <http://www.gnu.org/licenses/>.
#***********************************************************************

FROM ubuntu:22.04
LABEL maintainer="@underwoo"
LABEL copyright="2021, 2022 GFDL"
LABEL license="LGPL v3+"
LABEL vendor="Geophysical Fluid Dynamics Laboratory"
LABEL gov.noaa.gfdl.ubuntu.version="2022.04"
LABEL gov.noaa.gfdl.version="4.0.0"
LABEL gov.noaa.gfdl.release-date="2022-11-06"

## install fre-nctools dependencies
RUN apt-get update \
 && apt-get -y install software-properties-common \
 && add-apt-repository ppa:underwoo/nccmp --update \
 && apt-get install -y \
    autoconf \
    bats \
    gfortran \
    git \
    libnetcdf-dev \
    libnetcdff-dev \
    make \
    nccmp \
    netcdf-bin \
    python \
    python3-netcdf4 \
    python3-numpy \
    python3-pip \
    python3-pytest \
    python3-venv \
    mpich \
    libmpich-dev \
 && pip install git+https://github.com/adcroft/numpypi.git
