library(sf)

areasVerdes <- st_read("SBFL.gpkg", "AreasVerdes")
areasInst <- st_read("SBFL.gpkg", "AreasInstitucionais")
quadras <- st_read("SBFL.gpkg", "Quadras")

areaGleba <- 4792622.06

(areaQuadras <- sum(quadras$Area))
(areaInst <- sum(areasInst$Area))
(areaVerdes <- sum(areasVerdes$Area))
(areaArruamentos <- areaGleba - areaQuadras - areaInst - areaVerdes)

(percentQuadras <- areaQuadras/areaGleba)
(percentInst <- areaInst/areaGleba)
(percentVerdes <- areaVerdes/areaGleba)
(percentArruamentos <- areaArruamentos/areaGleba)