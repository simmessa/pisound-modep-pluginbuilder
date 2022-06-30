#!/bin/bash
# copyme

bash startme.sh

docker cp modpluginbuilder:/home/builder/mod-workdir/modduo/plugins/ lv2-plugins

FILES=""
for dir in ./lv2-plugins/plugins/* ;
do
    echo "tarzing dir $dir..."
    tar -zcf $dir.tar.gz $dir
    echo done.
done

docker kill modpluginbuilder

echo All done.