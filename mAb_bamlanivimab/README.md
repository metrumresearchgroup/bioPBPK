# Description

This repository contains the script to reproduce Figures 2 and 3 from the Bamlanivimab manuscript. The mAb PBPK model used is an adaptation of the [mAb_Jones2019](https://github.com/metrumresearchgroup/bioPBPK/tree/main/mAb_Jones2019) model (https://ascpt.onlinelibrary.wiley.com/doi/full/10.1002/psp4.12461). The main modification was making the total number of endothelial cells dependent on weight to reflect the variability in a population. This was done using the allometric scaling suggested by Ucciferri et al 2014 https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4269269/pdf/fbioe-02-00074.pdf:

<a href="https://www.codecogs.com/eqnedit.php?latex=Endo_{scaled}=&space;Endo_{mean}*&space;(\frac{BW}{BW_{mean}})^{\frac{11}{12}}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?Endo_{scaled}=&space;Endo_{mean}*&space;(\frac{BW}{BW_{mean}})^{\frac{11}{12}}" title="Endo_{scaled}= Endo_{mean}* (\frac{BW}{BW_{mean}})^{\frac{11}{12}}" /></a>

where <img src="https://render.githubusercontent.com/render/math?math=Endo"> is total number of endothelial cells, <img src="https://render.githubusercontent.com/render/math?math=BW"> is body weight, <img src="https://render.githubusercontent.com/render/math?math=mean"> refers to the mean individual, and <img src="https://render.githubusercontent.com/render/math?math=scaled"> refers to the allometrically scaled value.

This work was done in conjunction with https://github.com/metrumresearchgroup/vk-covid19.

# Package Management

- Install `pkgr` software following the instructions here https://github.com/metrumresearchgroup/pkgr
- Open the R project `mAb_bamlanivimab.Rproj`. This allows you to work from within a self-contained project environment.
- Install packages by typing in terminal: `pkgr install`. This command will look for the file `pkgr.yml` and install the packages listed. The specific package versions are imported from https://mpn.metworx.com/docs/.

# mrgsolve Installation

For detailed instructions on mrgsolve installation and important dependencies, follow this link https://github.com/metrumresearchgroup/mrgsolve

# Reproducing Figures

- Make `script` your working directory.
- Run the script `script/script.R`. This script will:
    - load the necessary packages
    - compile the bamlanivimab model specification file located at `model/mAb_bamlanivimab.txt`
    - reproduce Figures 2 and 3 of the manuscript and save them under `script/figures/bamlanivimab_figures.pdf`


