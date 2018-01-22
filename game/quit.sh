cd bin

echo quit lobby
./AdminTool ../AdminTool/quitLobby.scp

echo wait lobby last save

echo quit battle

echo quit database
./AdminTool ../AdminTool/quitDatabase.scp
echo quit bwLobby
./AdminTool ../AdminTool/quitBwLobby.scp
echo wait bwLobby last save

echo quit bwDatabase
./AdminTool ../AdminTool/quitBwDatabase.scp
echo quit center
./AdminTool ../AdminTool/quitCenter.scp
echo quit bwcenter