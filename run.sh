#!/bin/bash

# Define the name of the virtual environment
VENV_NAME="example-env-2"

# Create a new virtual environment
#python3 -m venv $VENV_NAME

# Activate the virtual environment
source ./$VENV_NAME/bin/activate

#/usr/local/opt/python@3.11/bin/python3.11 -m pip install --upgrade pip

# Install the required dependencies
pip3 install deeplake==0.0.75
pip3 install langchain
pip3 install openai
pip3 install pathspec
pip3 install streamlit
pip3 install streamlit_chat
pip3 install tiktoken
pip3 install python-dotenv
pip3 install flake8
pip3 install black

# Run your Python script (replace 'your_script.py' with the actual filename)
python3 src/main.py process --repo-url https://github.com/username/repo_name

# Deactivate the virtual environment
deactivate
