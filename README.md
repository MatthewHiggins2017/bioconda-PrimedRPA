# PrimedRPA

[![install with bioconda](https://img.shields.io/badge/install%20with-bioconda-brightgreen.svg?style=flat)](https://anaconda.org/bioconda/primedrpa) [![Anaconda-Server Badge](https://anaconda.org/bioconda/primedrpa/badges/license.svg)](https://anaconda.org/bioconda/primedrpa) [![Anaconda-Server Badge](
https://anaconda.org/bioconda/primedrpa/badges/latest_release_date.svg)](https://anaconda.org/bioconda/primedrpa)

A python-based command-line package to augment primer and probe design for Recombinase Polymerase Amplification (RPA).

## Installation

GitHub Installation

```sh
git clone https://github.com/MatthewHiggins2017/bioconda-PrimedRPA.git
cd ./bioconda-PrimedRPA
conda env create --file=PrimedRPA.yml
conda activate RPA
python setup.py install
```

Conda Installation

```sh
conda install -c bioconda primedrpa
```

For multimachine parallelization `mpi4py` is used and thus need to be installed.

```sh
conda activate RPA
# ## if you want to use an existing MPI implementation, set the variable MPICC
# ##  making e.g. openMPI available by activating the respective module.
# ##  if the variable is not set, an MPI installation should be installed automatically
# ##  as a dependency.
# export MPICC=$(which mpicc)
python3 -m pip install mpi4py
```

### Parameter Parsing

Parameters can be parsed to PrimedRPA via the command line or using the PrimedRPA_Parameters.txt file. To download the text file
please see the link below:

```sh
wget https://raw.githubusercontent.com/MatthewHiggins2017/bioconda-PrimedRPA/master/PrimedRPA_Parameters.txt
```

### Key Output Files

For each PrimedRPA run the following 3 key files are generated:

```sh
[RunID]_Alignment_Summary.csv
[RunID]_Oligo_Binding_Sites.csv
[RunID]_Output_Sets.csv
```

### Walk-Through

Please see the wiki for more information, including a step-by-step walk through of using the software.

### 3rd-Party Software

PrimerRPA incorporates the following 3rd party software:

Clustal Omega (<http://www.clustal.org/omega/>) - For sequence alignment if necessary.<br/>
Blastn (<https://blast.ncbi.nlm.nih.gov/Blast.cgi>) - To assess primer/probe cross-reactivity.<br/>
Samtools (<http://www.htslib.org/>) - To assess primer/probe cross-reactivity.<br/>

### Contact

If you encounter any bugs please contact me directly at **matthew.higgins[at]lshtm.ac.uk**
