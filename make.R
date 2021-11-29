####################
# script pour l'execution du projet entier
####################

#install packages
devtools::install_deps()

#load function
#la fonction source en gros elle lit et execute tout ce que le fichier contient. ici dans ce fichier y'a nos 3 fonctions
source("R/data_wildfinder.R")

#run exodplyr
source("R/exercices/exo_dplyr.R")

#la function unlink permet de faire un truc mais j'ai pas compris quoi
