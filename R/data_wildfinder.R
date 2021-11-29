#on va faire une fonction qui va lire le fichier csv et renvoyer ce qu'il y'a dedans
#le prefixe data c'est une convention qu'on peut utiliser pour se rappeler que c'est en lien avec la manipulation de donnee
#notre fonction n'a pas besoin de parametre car on va le coder "en dur" (comme la fonction getwd)
#on verifie qu'on a bien le package here et readr

#' Import WWF Species Data
#'
#' @return A tibble containing species ID & taxonomy
#' @export
#'
#' @examples
data_sp_list <- function () {

  dat <- readr::read_csv(
    here::here("data","wwf-wildfinder","wildfinder-mammals_list.csv")
    )
  return(dat)
}

#Adeley c'est celui a fait ggplot et il a conseille aux gens ces conventions.
#here::here("data","wwf-wildfinder","wildfinder-mammals_list.csv")
#On fait ca et pas ca here::here("data/wwf-wildfinder/wildfinder-mammals_list.csv")
#Ca windows utilise des \ et pas des / donc pour eux il faut mieux faire cela
#En executant le code on voit que ca met la funciton dans mon enironnement
#Ensuite on met un commentaire qui dit ce que va faire cette fonction
#Code>insert Roxyene Squeletton pour afficher des informations sur la fonction. Pourquoi ne pas juste faire un petit commentaire normal ? Car comme ca en faisant ?data_sp_list on va trouver les informations decrites ci-dessus
#Je pense qu'il faut faire un script avec plein de commentaire pour tout comprendre et ensuite un script "propre".

#' Import WWF ecoregion Data
#'
#' @return A tibble containing ecoregion ID &
#' @export
#'
#' @examples
data_eco_list <- function () {

  dat <- readr::read_csv(
    here::here("data","wwf-wildfinder","wildfinder-ecoregions_list.csv")
  )
  return(dat)
}

#' Import WWF Species ecoregion Data
#'
#' @return A tibble linking ecoregion to species ID
#' @export
#'
#' @examples
data_sp_eco_list <- function () {

  dat <- readr::read_csv(
    here::here("data","wwf-wildfinder","wildfinder-ecoregions_species.csv")
  )
  return(dat)
}

#Ducoup je viens de creer mes 3 focntions. Ces 2 packages sont devenu des dependances de nos projets. Il faut le dire au personne qui vont faire tourner nos scripts qu'ils ont besoin de ces deux packages.
#Pour cela on utilise la fonction usethis::use_package()
# usethis::use_package("readr")
# usethis::use_package("here")
#On va donc documenter comme ca le fichier DESCRIPTION qu'on aura besoin juste ci-dessous. Les 2 packages vont venir se greffer sous la ligne "import"

#pour creer un read me version R marckdown on fait comme ca :
#rrtools::use_readme_rmd()
#En gros si on met se read me sur github bin quand ils vont arriver ils vont voir un beau fichier read.me

#En fesant cette fonction
#devtools::install_deps()
#cette fonction va directement aller dans le fichier DESCRIPTION et regarder les fonctions dont tu as besoin
#Il va regarder ce que tu as deja comme package, ceux que tu as pas, les dependances dont tu as besoins et les updates...
#Donc le mec a juste besoin de faire cette fonction et recupere tout ce dont il a besoin.
#Donc quand je recupere le code de qql je fais juste ca et tout est bon. Des fois faut le faire 2 fois ou fermer et reouvrir et le faire direct mais bon.

#Pour rendre disponible a nos analyses l'ensemble des functions qu'on a defini. Si on creer des fonctions pour les donnees, les stats et tout il faut aussi faire plsueiurs script par categorie 'data", "methode" etc...
#il faut maintenant rendre dispo nos functions :
# devtools::load_all()
#on peut mettre cette fonction dans mon fichier make a la racine au tout debut comme ca tu load toute tes fonctions des le début.
# source("R/data_wildfinder.R")
#en faisant source ca charge nos fonctions dans l'environnement.

#partie 6
#On va fabriquer un repertoire output dans lequel se trouveront les output ainsi qu'un repertoire exercice
# dir.create("outputs")
# dir.create("exercices")
#on creer un nouveau fichier R avec file.create()
