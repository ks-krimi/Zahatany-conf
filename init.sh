#!/bin/bash

# Chemin vers le dossier contenant le shapefile
SHAPEFILE_DIR="./geoserver/data_dir/mdg_admbnda_adm4_bngrc_ocha_20181031"

# Nom du shapefile
SHAPEFILE_NAME="mdg_admbnda_adm4_BNGRC_OCHA_20181031.shp"

# Nom de la table à créer dans PostgreSQL
TABLE_NAME="ezaha"

# Code SRID pour le système de référence spatiale (4326 pour WGS 84)
SRID="4326"

# Exécution de la commande shp2pgsql pour importer le shapefile dans PostgreSQL
shp2pgsql -I -s $SRID "$SHAPEFILE_DIR/$SHAPEFILE_NAME" $TABLE_NAME | psql -h localhost -p 5432 -U docker -d gis



SHAPEFILE_DIR="./geoserver/data_dir/planet_47.046_-21.494_3c9928e9-shp/shape"

SHAPEFILE_NAME="points.shp"

TABLE_NAME="point"

shp2pgsql -I -s $SRID "$SHAPEFILE_DIR/$SHAPEFILE_NAME" $TABLE_NAME | psql -h localhost -p 5432 -U docker -d gis

