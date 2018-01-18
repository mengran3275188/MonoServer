#!/bin/bash

MONO_ROOT_DIR=$(cat mono_path);
export PATH=.:$MONO_ROOT_DIR/bin:$PATH
export LD_LIBRARY_PATH=.:$MONO_ROOT_DIR/lib:/home/mrdTomcat/openresty/nginx/sbin:$LD_LIBRARY_PATH
#export MONO_PATH=$MONO_ROOT_DIR/lib
export WORLD_ID=1

cd bin

echo "check world id ..."
./AdminTool ../AdminTool/checkworldid.scp $1

if [ "$?" -ne "0" ]; then
  exit 1
fi;	
	
nohup ./ServerCenter>&1 >log/center_$(date +%F).txt &
echo start ServerCenter
sleep 3

nohup mono DatabaseServer.exe>/dev/null 2>log/database_$(date +%F).txt &
echo start Database
sleep 1

nohup mono Lobby.exe>/dev/null 2>log/lobby_$(date +%F).txt &
echo start Lobby
sleep 1

nohup mono BattleServer.exe>/dev/null 2>log/battleserver_$(date +%F)_1.txt &
echo start BattleServer

echo DFM server ready.
exit 0
