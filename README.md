# usensys  

*WORK IN PROGRESS*  

Drafting US energy system model using **R** (https://www.r-project.org/) and **energyRt** (https://github.com/olugovoy/energyRt).  

# (!) To clone
Large files are stored with **Git Large Files Storage**. To download all the data and the model output files, install *git lfs* (https://git-lfs.github.com).

## Electric power sector  
There will be two main versions of the sector:  
* capacity expansion (with focus on long-term planning)  
* balancing version (with focus on sub-annual and balancing for demand and supply).  

### Data 
By now, here is the data webscraping/processing file `US_ELC_data.Rmd`. 

### Renewables balancing model  
The first draft of renewables balancing model here - check **USA_ELC_BAL_R49.Rmd** and/or the "knitted" pdf with the same name. The model includes three generating technologies (solar, on- and ofshore wind farms), two storage technologies (intraday and interday), and several versions of interregional grid.  
Solved scenarios are saved in the *scenarios/* directory.  
* scen_RENBAL0.RData - no grid, no interregional dispatch  
* scen_RENBAL1.RData - simplified, open trade routes between neighbour regions with upper limit, losses and costs  
* scen_RENBAL2.RData - same with added UHV electricity, rectifier and inverter stations.  

Some visualisations of earlier scenarios with the model can be found here:  
https://www.youtube.com/channel/UCw4fCrRTozmAqwHY63oLT2A  

### Standard capacity expansion model  
in progress...  

