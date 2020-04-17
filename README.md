# Subcellular location prediction of apoptosis proteins
## Install
To run the code for predicting the subcellular location of proteins, you need to add the path of Classifier in your Matlab path.

## Usage
**feature extraction**<br>
Two evotionary information based feature extraction methods are used to formulate the apoptosis protein sequences.<br>

*consensus seuqence-based transition matrix (CTM)*<br>
Run transition.m and tranM.m to extract CTM feature<br>

*absolute entropy correlation analysis (AECA-PSSM)*<br>
Run absoENcl.m to extract the AECA-PSSM feature of proteins.<br>

**Train the model**<br>
After obtaining features of the proteins, LDA is used for dimensionality reduction, and the prediction results can be ontained just by calling Demo.m
