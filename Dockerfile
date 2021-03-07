# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.
ARG BASE_CONTAINER=jupyter/datascience-notebook
FROM $BASE_CONTAINER

LABEL maintainer="Tejas Siripurapu modded datascience-notebook <tejas97siripruapu@gmail.com>"



COPY . /notebook

WORKDIR /notebook
