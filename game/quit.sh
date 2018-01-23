cd bin

echo quit lobby
./AdminTool ../AdminTool/quitLobby.scp
echo wait lobby last save
./AdminTool ../AdminTool/waitLobby.scp

echo quit database
./AdminTool ../AdminTool/quitDatabase.scp
echo wait database last save
./AdminTool ../AdminTool/waitDatabase.scp

echo quit bwLobby
./AdminTool ../AdminTool/quitBwLobby.scp
echo wait bwLobby last save
./AdminTool ../AdminTool/quitBwLobby.scp

echo quit bwDatabase
./AdminTool ../AdminTool/quitBwDatabase.scp
echo wait bwDatabase last save
./AdminTool ../AdminTool/waitBwDatabase.scp

echo quit center
./AdminTool ../AdminTool/quitCenter.scp
echo quit bwcenter
./AdminTool ../AdminTool/quitBwCenter.scp

echo quit battle
pkill mono