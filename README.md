# PrimedRPA

PrimedRPA is a python script by Matthew Higgins that creates candidate recombinase polymerase A amplification (RPA) primers based on sequences provided in a text file.

This repository hosts files used in a Google Colab notebook I created to get around the process of installing conda and PrimedRPA locally. The most recent original repo of PrimedRPA is [here](https://github.com/MatthewHiggins2017/bioconda-PrimedRPA)

### Installation

For this Colab derivative, no installation is required. The interactive notebook and its guide can be found [here](https://colab.research.google.com/drive/1e46vSyKUgoW9UgAfYQLYwJLomt8Trigu?usp=sharing)

### 3rd-Party Software

PrimedRPA incorporates the following 3rd party software:

- Clustal Omega (http://www.clustal.org/omega/) - For sequence alignment if necessary.<br/>
- Blastn (https://blast.ncbi.nlm.nih.gov/Blast.cgi) - To assess primer/probe cross-reactivity.<br/>
- Samtools (http://www.htslib.org/) - To assess primer/probe cross-reactivity.<br/>

This derivative by me, not the creator of PrimedRPA, additionally uses Google Colab (https://colab.research.google.com) to run PrimedRPA in the cloud instead of locally, circumventing any problems with installation.

### Contact

If you encounter any bugs please contact the creator of PrimedRPA directly at **matthew.higgins[at]lshtm.ac.uk**. For colab-specific questions open an [Issue](https://github.com/joostvhts/PrimedRPA/issues/new/choose) in this repo.