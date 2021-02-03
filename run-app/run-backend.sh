#!/usr/bin/env bash
#creating the env PORT
if [ -z "$PORT"]|| [ "$PORT" != 4001 ]; then
  sudo echo 'export PORT=4001' >> /home/vagrant/.bashrc
  source ~/.bashrc 
fi
cd /shared
rm -f program.out
nohup ./vuego-demoapp &> program.out &

