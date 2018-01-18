cd bin

#echo check world id ...
#./AdminTool ../AdminTool/checkworldid.scp $1

if [ "$?" -ne "0" ]; then
  exit 1
fi;

echo quit lobby ...
./AdminTool ../AdminTool/quitLobby.scp

echo wait lobby last save ...
./AdminTool ../AdminTool/waitLobby.scp

echo quit battle ...
./AdminTool ../AdminTool/quitBattle.scp

echo wait lobby last save ...
./AdminTool ../AdminTool/waitBattle.scp

echo quit database ...
./AdminTool ../AdminTool/quitDatabase.scp

echo wait lobby last save ...
./AdminTool ../AdminTool/waitDatabase.scp

echo try quitCenter
./AdminTool ../AdminTool/quitCenter.scp

echo stop DFM servers done.

exit 0

