FROM python:3.9.16-slim-bullseye

LABEL maintainer="Tejas Siripurapu Jupyter NB Server <tejas97siripruapu@gmail.com>"

RUN apt-get update && apt-get install -y gcc
RUN pip install jupyterlab

EXPOSE 8888

CMD jupyter-lab --ip=0.0.0.0 --port=8888 --no-browser --allow-root

# docker run -p 8888:8888 -v ${PWD}:/home -d tj1997/jupyter-nb-images:localnb
