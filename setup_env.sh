# [OPTIONAL] Activate a virtual environment called "snorkel"
conda create --yes -n snorkel-env python=3.6
conda activate snorkel-env

# We specify PyTorch here to ensure compatibility, but it may not be necessary.
conda install -y pytorch==1.1.0 -c pytorch
conda install -y snorkel==0.9.0 -c conda-forge

# Setting up jupyter kernel

conda install ipykernel
python -m ipykernel install --user --name snorkel-env --display-name="snorkel-env"

# Installing requirements -- do the same for each tutorial!
pip install -r requirements.txt
pip install -r spam/requirements.txt

# Getting spacy model
python -m spacy download en
