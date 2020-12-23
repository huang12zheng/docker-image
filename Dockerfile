FROM hzgood/nvm-flutter
LABEL name="fluid_server"

SHELL ["/bin/bash", "-o", "pipefail", "-c"]
RUN bash -c 'source $HOME/.nvm/nvm.sh   && \
wget -qO- https://raw.githubusercontent.com/microsoft/FluidFramework/main/.nvmrc>.nvmrc &&\
nvm install &&\
nvm use'
WORKDIR /home
RUN git clone https://github.com/huang12zheng/fluid_model.git workspace
WORKDIR /home/workspace
RUN bash -c 'source $HOME/.nvm/nvm.sh && npm install'