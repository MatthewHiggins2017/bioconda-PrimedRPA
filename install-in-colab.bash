#!/bin/bash

# Clone git repos
echo 'Cloning repos...'

# My conda repo
git clone -q https://github.com/joostvhts/PrimedRPA > /dev/null
mv PrimedRPA/* .

# Matthew Higgins' PrimeRPA repo
git clone -q https://github.com/MatthewHiggins2017/bioconda-PrimedRPA > /dev/null
echo 'Successfully cloned both repos.'
mv bioconda-PrimedRPA/* .

# Web location of the (mini)conda installer to use
CONDA_INSTALLER=https://repo.anaconda.com/miniconda/Miniconda3-py37_4.12.0-Linux-x86_64.sh

echo 'Installing conda...'
# Wipe the current value of PYTHONPATH to prepare for conda installation
PYTHONPATH=''

# Install conda
wget $CONDA_INSTALLER -O conda-install.sh -q
chmod +x conda-install.sh
./conda-install.sh -b -f -q -p /usr/local
conda config --add channels bioconda
conda config --add channels conda-forge
echo 'Successfully installed conda'

# Update conda
echo 'Updating conda...'
conda install --channel defaults conda python=3.7 --yes > /dev/null
conda update --channel defaults --all --yes > /dev/null
echo 'Successfully updated conda.'

# Install PrimedRPA
echo 'Installing PrimedRPA...'
conda install -c bioconda primedrpa --yes > /dev/null
echo 'Successfully installed PrimedRPA.'

# Verification of successful installation
# Make check variable
check=0 

# Update check variable
if [ $(which conda) == '/usr/local/bin/conda' ] && [ $(conda --version | head -c 5) == 'conda' ] && [ $(which python) == '/usr/local/bin/python' ] && [ $(python --version | head -c 6) == 'Python' ]
then
	check=1
	echo 'Successfully prepared environment for using PrimedRPA. Continue to the next step.'
fi
