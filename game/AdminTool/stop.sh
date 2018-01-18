#!/bin/bash

echo "Are you sure ? (y/n)"
read ack

if [ $ack != "y" ]; then
  exit 1
fi
	
pkill node
pkill nginx
pkill mono
pkill ServerCenter

exit 0