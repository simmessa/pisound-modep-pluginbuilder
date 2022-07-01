from mbp
#dependencies
# run apt update -y && apt install -y libgl1-mesa-dev libjack-jackd2-dev
run git submodule init && git submodule update
add builder.sh builder.sh
add buildsingle.sh buildsingle.sh
# run bash builder.sh

# Testing w. single build plugins
run bash buildsingle.sh abgate
# run bash buildsingle.sh artyfx
# run bash buildsingle.sh artyfx-labs
run bash buildsingle.sh collisiondrive
run bash buildsingle.sh deteriorate-lv2-labs
run bash buildsingle.sh fatfrog
run bash buildsingle.sh gxtonemachine
run bash buildsingle.sh infamous-plugins
run bash buildsingle.sh infamous-plugins-labs
run bash buildsingle.sh metaltone
# run bash buildsingle.sh cardinal-bin
run bash buildsingle.sh carla-plugins
run bash buildsingle.sh fabla-labs
run bash buildsingle.sh gxvoodoo
run bash buildsingle.sh dexed-labs

# cannot find IRs, so it's pointless right now
# run bash buildsingle.sh mod-cabsim-ir-loader

# plugins are located in /home/builder/mod-workdir/modduo/plugins/

cmd sleep 1d
