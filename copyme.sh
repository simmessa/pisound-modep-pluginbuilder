#!/bin/bash
# copyme

set -e

if [ -d "./lv2-plugins" ] 
then
    echo "Directory ./lv2-plugins exists." 
else
    echo "Error: Directory ./lv2-plugins does not exists. Creating..."
    mkdir ./lv2-plugins
    echo done.
fi

mkdir -p ./lv2-plugins/tarballs

bash startme.sh
docker cp modpluginbuilder:/home/builder/mod-workdir/modduo/plugins/ lv2-plugins
# only source code :(
#docker cp modpluginbuilder:/home/builder/mod-workdir/modduo/target/usr/lib/lv2/ lv2-plugins
# docker cp modpluginbuilder:/home/builder/mod-plugin-builder/lv2-data/plugins/ lv2-plugins
# docker cp modpluginbuilder:/home/builder/mod-plugin-builder/lv2-data/plugins-fixed/ lv2-plugins
# docker cp modpluginbuilder:/home/builder/mod-plugin-builder/lv2-data-creative-commons/plugin-data/ lv2-plugins

find ./lv2-plugins/ -name *.lv2 -exec tar -zcf "{}".tar.gz "{}" \;
find ./lv2-plugins/ -not -path "./lv2-plugins/tarballs/*" -name *.tar.gz -exec cp "{}" ./lv2-plugins/tarballs  \;

rm -fr ./lv2-plugins/lv2 ./lv2-plugins/plugins ./lv2-plugins/plugins-fixed/ ./lv2-plugins/plugin-data

echo "Here's a list of the lv2 plugins I've found:"
echo
ls -la ./lv2-plugins/tarballs/*.tar.gz
echo
echo

# FILES=""
# for dir in ./lv2-plugins/plugins/* ;
# do
#     if [ -d $dir ] 
#     then
#         echo "tarzing dir $dir..."
#         tar -zcf $dir.tar.gz $dir
#         echo done.
#     fi
# done

# for dir in ./lv2-plugins/plugin-data/*.lv2 ;
# do
#     if [ -d $dir ] 
#     then
#         echo "tarzing dir $dir..."
#         tar -zcf $dir.tar.gz $dir
#         echo done.
#     fi
# done

docker kill modpluginbuilder

echo All done.