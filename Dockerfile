FROM jupyter/minimal-notebook

USER root

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        lsb-release \
        psmisc \
        libssl1.0.0 \
        ;

RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/*

USER $NB_USER

RUN pip install git+https://github.com/ryanlovett/jupyter-server-proxy@2f963f4

ENV SYNCTHING_VERSION="v1.1.0"
RUN wget https://github.com/syncthing/syncthing/releases/download/${SYNCTHING_VERSION}/syncthing-linux-amd64-${SYNCTHING_VERSION}.tar.gz && \
	tar xzf syncthing-linux-amd64-${SYNCTHING_VERSION}.tar.gz
ENV PATH="${PATH}:${HOME}/syncthing-linux-amd64-${SYNCTHING_VERSION}"

RUN mkdir ${HOME}/syncthing-home
ADD config.xml ${HOME}/syncthing-home
ADD jupyter_notebook_config.py ${HOME}/.jupyter
