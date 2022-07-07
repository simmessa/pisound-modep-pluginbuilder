FROM mbp
#dependencies
# run apt update -y && apt install -y libgl1-mesa-dev libjack-jackd2-dev
RUN git submodule init && git submodule update
ADD builder.sh builder.sh
ADD buildsingle.sh buildsingle.sh
# run bash builder.sh

# Testing w. single build plugins
RUN bash buildsingle.sh abgate
# run bash buildsingle.sh artyfx
# run bash buildsingle.sh artyfx-labs
RUN bash buildsingle.sh collisiondrive
RUN bash buildsingle.sh deteriorate-lv2-labs
RUN bash buildsingle.sh fatfrog
RUN bash buildsingle.sh gxtonemachine
RUN bash buildsingle.sh infamous-plugins
RUN bash buildsingle.sh infamous-plugins-labs
RUN bash buildsingle.sh metaltone
# run bash buildsingle.sh cardinal-bin
RUN bash buildsingle.sh carla-plugins
RUN bash buildsingle.sh fabla-labs
RUN bash buildsingle.sh gxvoodoo
RUN bash buildsingle.sh dexed-labs
# will build many distrho plugins including OB-Xd
RUN bash buildsingle.sh distrho-ports-labs
# VEX synth
RUN bash buildsingle.sh distrho-ports
# SIMSAM for sfz soundfonts, so that you can bring yours ;)
RUN bash buildsingle.sh  simsam-labs

# cannot find IRs, so it's pointless right now
# run bash buildsingle.sh mod-cabsim-ir-loader

# plugins are located in /home/builder/mod-workdir/modduo/plugins/

CMD sleep 1d
