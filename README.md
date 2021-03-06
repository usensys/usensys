# usensys  <a href='http://www.usensys.org/'><img src='img/logo.svg' align="right" height="139" /></a>

*WORK IN PROGRESS*  

Drafting US energy system model using [**R**](https://www.r-project.org/) and [**energyRt**](https://github.com/energyRt/energyRt).  

# (!) To clone
Large files are stored with **Git Large Files Storage**. To download all the data and the model output files, install *git lfs* (https://git-lfs.github.com).  
**NOTE** The LFS has monthly limits, below is alternative solution to download the model data.  

## Electric power sector  
There will be two main versions of the sector:  
* capacity expansion (with focus on long-term planning)  
* balancing version (with focus on sub-annual and balancing for demand and supply).  

### Data 
By now, here is the data webscraping/processing file `US_ELC_data.Rmd`. Also see notes in model files for processed data files.  

### Renewables balancing model  
The full code of the renewables balancing model is saved in **USA_ELC_BAL_R49_vXX.Rmd** and/or the "knitted" pdf with the same name. The model includes several generating technologies (solar, on- and offshore wind, thermal), storage technologies (intraday and interday), and several versions of interregional grid.  
Several solved scenarios are saved in the *scenarios/* directory. Details available in the *.Rmd files and on the model website: [www.usensys.org](https://www.usensys.org/).   


### Standard capacity expansion model  
in progress...  

