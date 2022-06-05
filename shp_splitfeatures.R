library (sf)

#dat <- read_sf("HydroLAKES_polys_v10_shp (1)/HydroLAKES_polys_v10_shp/HydroLAKES_polys_v10.shp")
#dat <- read_sf("Hylak_id_259562.shp")
#dat <- read_sf("HydroLAKES_polys_v10.shp")
#dat <- read_sf("tx_hydrolakes_test.shp")
dat<-read_sf("HydroLAKES_NorAmInterior_polys_v10.shp")

#setwd("hylak_tx")
setwd("hylak_noraminterior_polys")
t0<-Sys.time()
for (i in seq_len(nrow(dat))){
#for (i in seq_len(100)){
#for (i in 1:100){
  fname <- paste0 ("hylak_", dat$Hylak_id[i], ".shp")
  write_sf (dat [i, ], fname)
}
t1<-Sys.time()
tdiff<-t1-t0
tdiff


