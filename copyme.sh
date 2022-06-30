#!/bin/bash
# copyme

if [ -d "./lv2-plugins" ] 
then
    echo "Directory ./lv2-plugins exists." 
else
    echo "Error: Directory ./lv2-plugins does not exists. Creating..."
    mkdir ./lv2-plugins
    echo done.
fi

bash startme.sh
docker cp modpluginbuilder:/home/builder/mod-workdir/modduo/plugins/ lv2-plugins

FILES=""
for dir in ./lv2-plugins/plugins/* ;
do
    if [ -d $dir ] 
    then
        echo "tarzing dir $dir..."
        tar -zcf $dir.tar.gz $dir
        echo done.
    fi
done

docker kill modpluginbuilder

echo All done.