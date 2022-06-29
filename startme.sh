#!/bin/bash
# startme.sh
# copy lv2 plugs into /usr/modep/lv2 on pisound Rpi

# docker run -v ~/projects/pisound/lv2-plugins/:/home/builder/mod-workdir/modduo/plugins/ -d --rm --name modpluginbuilder modpluginbuilder
docker run -d --rm --name modpluginbuilder modpluginbuilder