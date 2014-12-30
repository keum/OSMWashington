Map 
{
  background-color: @background;
}

@background:white;




#osm-washington {
  line-width:1;
  line-color:#168;
}

/* Land use fills */
#landuse {
  [type='arena']{ polygon-fill: @stadium; }
  [type='beach']{ polygon-fill: @beach; }
  //[type='cemetery']{ polygon-fill: @park; }
  [type='college']{ polygon-fill: @school; }
  //[type='commercial']{ polygon-fill: @commercial; }
  //[type='dog_park']{ polygon-fill: @park; }
  [type='common']{ polygon-fill: @park; }
  [type='forest']{ polygon-fill: @forest; }
  [type='garden']{ polygon-fill: @park; }
  [type='golf_course']{ polygon-fill: @park; }
  //[type='grass']{ polygon-fill: @grass; }
  [type='hospital']{ polygon-fill: @hospital; }
  //[type='industrial']{ polygon-fill: @industrial; }
  [type='recreation_ground']{ polygon-fill: @park; }
  //[type='kindergarten']{ polygon-fill: @school; }
  //[type='military']{ polygon-fill: @military; }
  [type='park']{ polygon-fill: @park; }
  //[type='playground']{ polygon-fill: @park; }
  [type='parking']{ polygon-fill: @parking; }
  [type='pedestrian']{ polygon-fill: @parking*0.97; }
  //[type='pitch']{ polygon-fill: @park; }
  //[type='place_of_worship']{ polygon-fill: @place_of_worship; }
  //[type='recreation_ground']{ polygon-fill: @park; }
  //[type='residential']{ polygon-fill: @residential; }
  [type='school']{ polygon-fill: @school; }
  //[type='sports_center']{ polygon-fill: @stadium; }
  [type='swimming pool']{ polygon-fill: @water; }
  [type='stadium']{ polygon-fill: @stadium; }
  [type='university']{ polygon-fill: @school; }
  //[type='village_green']{ polygon-fill: @park; }
}