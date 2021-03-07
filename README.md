# Jupyter Notebook Server

Repository containing Jupyter notebook files, Dockerfile to build a modded jupyter/datascience-notebook, and kubeconfig files to deploy that image as a k8s deployment and create a persistent volume attached to the notebook server.

## MusicRecSys/

Contains ipynb files related to music recommendation system work.

## covid-vaccinations/

Contains ipynb and png files from exploring COVID-19 data provided from Our World in Data and other sources.

## kaggle/

Contains subfolders which contain notebooks and data files for kaggle competitions.

## Dockerfile

Builds docker image which is a modded version of `jupyter/datascience-notebook:latest` that copies over all repo files into container. Repository should be made public then Dockerfile can be updated to `git clone` so container is immediately initialized to push to the repository. This git repo is the single source of truth for all notebooks, so all containers running this image should be able to push any changes to some branch.

## kubeconfig/

Contains k8s configuration files to deploy Docker image and persistent volume for notebook server.
