/* For all different types of places that carry
   the class */
.places{
  text-name: "";
  text-face-name: @sans;
  text-fill: @place_text;
  text-wrap-width: 30;
  text-line-spacing: 1;
  text-placement: interior;
  text-align: center;
  text-size: 11;
  text-min-distance:10;
}



/* Roads */
#motorway-labels[type='motorway'][zoom>12],
#motorway-labels[type='trunk'][zoom>12]{
  text-face-name:@sans;
  text-name:"[name]";
  text-fill: @road_text;
  text-placement:line;
  text-halo-radius:0;
  text-character-spacing:.5;
  text-avoid-edges: false;
  [zoom=13]{
    text-min-distance:200;
    text-size:12;
    text-dy:10;
  }
  [zoom=14]{
    text-min-distance:300;
    text-size:14;
    text-dy:11;
  }
  [zoom>14]{
  text-halo-fill: @place_halo;
    text-halo-radius: 1.5;
  }
  [zoom=15]{
    text-min-distance:800;
    text-size:14;
    text-dy:2;
  }
  [zoom=16]{
    text-min-distance: 1000;
    text-size:16;
    text-dy:3;
  }
}

.surface-streets[zoom>12]{
  text-name: '[name]';
  text-face-name: @sans;
  text-placement: line;
  text-fill: lighten(@road_text,15%);
  text-halo-fill: @place_halo;
  text-halo-radius: 1.3;
  text-size: 11;
  text-character-spacing: 0.5;
  text-dy: 7;
}

#mainroad-labels[type='primary'][zoom>12]{
  [zoom=13]{
    text-min-padding:10;
    text-min-distance:120;
  }
  [zoom=14]{
    text-min-padding:45;
    text-min-distance:20;
    text-size:13;
  }
  [zoom=15]{
    text-min-padding:10;
    text-size:13.25;
  }
  [zoom=16]{
    text-min-padding:10;
  text-size: 14.5;
    text-min-distance:1000;
    text-dy: 9;
  }
}

#mainroad-labels[type='secondary'][zoom>12]{
  [zoom=13]{text-name: '';}
  [zoom=14]{
    text-min-padding:58;
    text-min-distance:20;
    text-size:12;
  }
  [zoom=15] {
    text-min-padding:10;
    text-size:12.5;
  }
  [zoom=16] {
    text-min-padding:10;
    text-size:13.5;
  }
 }

#mainroad-labels[type='tertiary'][zoom>12] {
  [zoom=13]{text-name: '';}
  [zoom=14]{
    text-min-padding:60;
    text-min-distance:20;
  }
  [zoom=15]{text-min-padding:120;}
  [zoom=16]{text-min-distance:200;}
}

#minorroad-labels[zoom>12] {
  text-min-padding:5;
  [zoom=13]{text-name: '';}
  [zoom=14]{text-name: '';}
  [zoom=15]{text-name: '';}
  [zoom=16]{
    text-min-distance:100;
    text-dy:9;
    text-halo-radius:1.3;
  }
}

/* All different kinds of places from the OSM database */
#landuse-labels {
  // Bring in labels gradually as one zooms in, bases on polygon area
  [zoom=10][area>102400000],
  [zoom=11][area>25600000],
  [zoom=12][area>9000000],
  [zoom=13][area>1600000],
  [zoom=14][area>320000],
  [zoom=15][area>30000],
  [zoom=16][area>8000]{
    text-name: "[name]";
    text-size: 12;
    [zoom=16]{text-size: 12;}
    text-placement: point;
    text-face-name: @sans_italic;
    text-fill: lighten(@place_text, 15);
    text-size: 12;
    [type='park'][zoom>=10],
    [type='golf_course'][zoom>=10],
    [type='cemetery'][zoom>=10]{
      text-fill: @park * 0.6;
      // Skip these since they are also neighborhood names
      [name='Griffith Park'] {text-name:"''";}
      [name='Elysian Park'] {text-name:"''";}
    }
    [type='hospital'][zoom>=10]{
      text-fill: @hospital * 0.6;
    }
    [type='arena'][zoom>=10],
    [type='sports_center'][zoom>=10],
    [type='stadium'][zoom>=10]{
      text-fill: @stadium * 0.6;
    }
    [type='college'][zoom>=10],
    [type='school'][zoom>=10],
    [type='university'][zoom>=10]{
      text-fill: @school * 0.6;
    }
    [type='water'][zoom>=10]{
      text-fill: @water * 0.6;
    }
    [type='aerodrome'][zoom>=10]{
      text-fill: @aerodrome * 0.6;
    }
    [type='place_of_worship'][zoom>=10]{
      text-fill: @place_of_worship * 0.6;
    }
  }
  [zoom=15][area>=1600000]{
    text-name: "[name]";
    text-size: 13;
    text-wrap-width: 60;
    text-character-spacing: 1;
  }
  [zoom=16][area>=1200000]{
    text-name: "[name]";
    text-size: 14;
    text-wrap-width: 60;
    text-character-spacing: 1;
  }
}

/*---------Place Name Label----------- */
#place_label {
  text-name: [name];
  text-face-name: @sans;
  text-wrap-width: 120;
  text-wrap-before: true;
  text-fill: #333;
  text-halo-fill: fadeout(#fff, 50%);
  text-halo-radius: 1;
  text-halo-rasterizer: fast;
  text-size: 10;
  [type='city'][zoom>=12][zoom <=18] {
    text-face-name: @sans;
    text-size: 16;
    [zoom>=10] {
      text-size: 18;
      text-wrap-width: 140;
    }
    [zoom>=13] {
      text-size: 24;
      text-wrap-width: 180;
    }
    // Hide at largest scales:
    [zoom>=16] { text-name: "''"; }
  }
  [type='town'] {
    text-size: 14;
    [zoom>=13] { text-size: 16; }
    [zoom>=14] { text-size: 20; }
    [zoom>=16] { text-size: 24; }
    // Hide at largest scales:
    [zoom>=18] { text-name: "''"; } 
  } 
  [type='village'] {
    text-size: 12;
    [zoom>=13] { text-size: 14; }
    [zoom>=14] { text-size: 18; }
    [zoom>=16] { text-size: 22; }
  }
  [type='hamlet'],
  [type='suburb'],
  [type='neighbourhood'] {
    text-fill: #633;
    text-face-name: @sans;
    text-transform: uppercase;
    text-character-spacing: 0.5;
    [zoom>=14] { text-size: 12; }
    [zoom>=15] { text-size: 13; text-character-spacing: 1; }
    [zoom>=16] { text-size: 15; text-character-spacing: 2; }
  }
}

