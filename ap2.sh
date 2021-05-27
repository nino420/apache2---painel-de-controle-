#!/bin/bash

clear

echo "
─█▀▀█ ░█▀▀█ ─█▀▀█ ░█▀▀█ ░█─░█ ░█▀▀▀ █▀█
░█▄▄█ ░█▄▄█ ░█▄▄█ ░█─── ░█▀▀█ ░█▀▀▀ ─▄▀
░█─░█ ░█─── ░█─░█ ░█▄▄█ ░█─░█ ░█▄▄▄ █▄▄"

echo "----------------------------------------------------------->


echo "  [1]  kill process"
echo "  [2]  start server"
echo "  [3]  stop server"
echo "  [4]  kill proocess  and start server"
echo "  [5]  delete httpd"
echo "----------------------------------------------------------->
echo "[selcione de 1 a até o número 5]"

read n
case $n in
  1)    killall httpd;;
  2)    apachectl start;;
  3)    apchectl  stop;;
  4)    killall httpd && apachectl start;;
  5)    rm $PREFIX/var/run/apache2/httpd.pid;;
  *)  echo "invalid option";;

esac
