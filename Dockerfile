from mbp
run git submodule init && git submodule update
add builder.sh builder.sh
run bash builder.sh
cmd sleep 1d
# run with -v ~/lv2-plugins/:/home/builder/mod-workdir/modduo/plugins/