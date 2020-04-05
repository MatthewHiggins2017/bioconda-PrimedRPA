# PrimedRPA

A python-based command-line package to augment primer and probe design for Recombinase Polymerase Amplification (RPA).


### Prerequisites

Python 3.5 +

### Installation

Download and unzip a copy of this repository using the green button towards the top right-hand corner of this page.


Navigate inside the PrimedRPA directory and trigger the installation process:

```
cd ./PrimedRPA-master
python INSTALL.py
```

During the installation process a Yes or No prompt will arise regarding the saving of validation primers. Please proceed as desired.

Once the installation script is complete please source the newly added PrimedRPA alias as follows:

```
# For MacOS Users
source ~/.bash_profile

# For Linux Users
source ~/.bashrc

# Call the software
PrimedRPA --help

```

The installation process is now complete. Please review the PrimedRPA_Parameters.txt to
set up your first Primer / Probe search.


### Key Output Files

For each PrimedRPA run the following 3 key files are generated:

```
[RunID]_Alignment_Summary.csv
[RunID]_Oligo_Binding_Sites.csv
[RunID]_Output_Sets.csv
```

### Walk-Through

Please see the wiki for more information, including a step-by-step walk through of using the software.

### 3rd-Party Software

PrimerRPA incorporates the following 3rd party software:

Clustal Omega (http://www.clustal.org/omega/) - For sequence alignment if necessary.<br/>
Blastn (https://blast.ncbi.nlm.nih.gov/Blast.cgi)- To assess primer/probe cross reactivity against potential background sequences.



### Contact


If you encounter any bugs please contact me directly at **matthew.higgins[at]lshtm.ac.uk**
