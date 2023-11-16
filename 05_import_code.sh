#!/bin/bash

# get easy diffusion
sudo apt install unzip
wget https://github.com/cmdr2/stable-diffusion-ui/releases/latest/download/Easy-Diffusion-Linux.zip
unzip Easy-Diffusion-Linux.zip
rm Easy-Diffusion-Linux.zip

# set up GIT
ssh-keygen -t rsa -b 4096 -C "cejkamartin@pef.czu.cz"
cat /home/aiadmin/.ssh/gitlab_mcejka_ai-admin2.pub # copy to Gitlab & Github
eval $(ssh-agent)
ssh-add /home/aiadmin/.ssh/gitlab_mcejka_ai-admin2
git clone git@gitlab.com:mcejka/big-data-analysis.git
git clone git@github.com:cejkys/ai_server_config.git
git clone git@github.com:cejkys/srt.git
git clone git@gitlab.com:mcejka/ui_components.git