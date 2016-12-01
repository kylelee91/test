#!/bin/sh

wget -O /minecraft/minecraft.jar https://s3.amazonaws.com/Minecraft.Download/versions/$VERSION/minecraft_server.$VERSION.jar

echo "eula=$EULA" >> /minecraft/eula.txt

/usr/bin/java -Xmx${MAXMEM} -Xms${MINMEM} -jar minecraft.jar nogui