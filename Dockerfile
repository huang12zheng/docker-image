FROM cirrusci/flutter
LABEL name="fluid_flutter"
RUN wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
WORKDIR /root
RUN bash -c 'source $HOME/.nvm/nvm.sh   && \
wget -qO- https://raw.githubusercontent.com/microsoft/FluidFramework/main/.nvmrc>.nvmrc &&\
nvm install &&\
nvm use'
WORKDIR /home
RUN git clone https://github.com/microsoft/FluidHelloWorld.git
WORKDIR /home/FluidHelloWorld
RUN bash -c 'source $HOME/.nvm/nvm.sh && npm install'