# Pre requisites

You should start by creating the docker image form moddevices/mod-plugin-builder, in order to do that please run:
```
git submodule init
git submodule update
```

then run build_mpb.sh:
```
./build_mbp.sh
```
_*** WARNING: it will take some hours ***_

# What's this

A collection of plugins for modep on pisound, compiled via docker with the help of mod-duo official repository.

After the pre-requisites, you can build the second image on top of this, it will compile some more lv2 plugins, you can select yours via the file `builder.sh`

Just uncomment the plugins you would like to compile, but keep in mind some are broken.

In order to build those and copy them to a local folder from docker run:

```
./buildme.sh
./copyme.sh
```

You should have several tarballs in `./lv2-plugins/plugins/*.tar.gz` that you can copy and untar into `/usr/modep/lv2` on your Raspberry Pi via scp (for example).

# What's currently included:

Here's the plugins that currently compile and are new to the standard Modep _this list is a WIP_.

- abgate
- collisiondrive
- deteriorate-lv2-labs
- fatfrog
- gxtonemachine
- infamous-plugins
- infamous-plugins-labs
- metaltone
- carla-plugins
- fabla-labs
- gxvoodoo
- dexed-labs

# About GUIs

Not all of these have a decent GUI in mod-host / modep, but there'a repo that can help you add an optimized GUI found here:
https://github.com/popololo46/modgui