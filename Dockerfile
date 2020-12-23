FROM hzgood/nvm-flutter
LABEL name="fluid_server_base"
LABEL info="nvm_fluid_version"

RUN bash -c 'source $HOME/.nvm/nvm.sh   && \
wget -qO- https://raw.githubusercontent.com/microsoft/FluidFramework/main/.nvmrc>.nvmrc &&\
nvm install &&\
nvm use'