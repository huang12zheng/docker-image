FROM hzgood/fluid-server-base
LABEL name="fluid_server"

WORKDIR /home
RUN git clone https://github.com/huang12zheng/fluid_model.git workspace
WORKDIR /home/workspace
RUN bash -c 'source $HOME/.nvm/nvm.sh && npm install'
SHELL ["/bin/bash", "-o", "pipefail", "-c"]