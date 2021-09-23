#!/bin/bash

sudo apt-get install python3-pip --yes

pip3 --version

python3 -m pip install robotframework

if ! grep --quiet "^export PATH=.*local/bin" ~/.bashrc; then
  echo "export PATH=\${PATH}:\${HOME}/.local/bin" | tee -a ~/.bashrc
fi

robot --version

pip3 install robotframework-requests

robot tests.robot
rebot output.xml

line
