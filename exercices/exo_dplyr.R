#####################################
# 29/11/21 erwan harscouet
#exo_dplyr.R
#script pour l'exo dplyr
####################################


dat <- data_sp_eco_list()
mam_per_eco <- table(dat$ecoregion_id)
hist(mam_per_eco, breaks = 10)
png(filename = here::here("outputs", "exo_dplyr_hist_mamals.png"))
dev.off()
#j'aime
