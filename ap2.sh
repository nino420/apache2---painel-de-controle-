#!/bin/bash

clear

echo "
─█▀▀█ ░█▀▀█ ─█▀▀█ ░█▀▀█ ░█─░█ ░█▀▀▀ █▀█ 
░█▄▄█ ░█▄▄█ ░█▄▄█ ░█─── ░█▀▀█ ░█▀▀▀ ─▄▀ 
░█─░█ ░█─── ░█─░█ ░█▄▄█ ░█─░█ ░█▄▄▄ █▄▄" 

echo "------------------------------------------------------------------"


echo "  [1] kill process"
echo "  [2] start server"
echo "  [3]  stop server"
echo "------------------------------------------------------------------"
echo "[digite uma opção de 1 a 3]"

read n  
case $n in
  1)   killall httpd;;
  2)  apachectl start;;
  3)  apachectl  stop;;
  *)  echo "invalid option";;
        
esac
