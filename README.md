# Subcellular location prediction of apoptosis proteins
## Install
To run the code for predicting the subcellular location of proteins, you need to add the path of Classifier in your Matlab path.

## Usage
1. feature extraction
Two evotionary information based feature extraction methods are used to formulate the apoptosis protein sequences.
*consensus seuqence-based transition matrix (CTM)*
Run transition.m and tranM.m to extract CTM feature
*absolute entropy correlation analysis (AECA-PSSM)*
Run absoENcl.m to extract the AECA-PSSM feature of proteins.

2. Train the model
After obtaining features of the proteins, LDA is used for dimensionality reduction, and the prediction results can be ontained just by calling Demo.m
