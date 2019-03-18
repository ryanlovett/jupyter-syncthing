FROM jupyter/minimal-notebook

USER root

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
		syncthing
        ;

RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/*

USER $NB_USER

RUN pip install git+https://github.com/ryanlovett/jupyter-server-proxy@fb851ee

ADD syncthing ${HOME}/syncthing
ADD jupyter_notebook_config.py ${HOME}/.jupyter
