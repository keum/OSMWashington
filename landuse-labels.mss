/* All different kinds of places from the OSM database */
#landuse-labels {
  // Bring in labels gradually as one zooms in, bases on polygon area
  [zoom=10][area>102400000],
  [zoom=11][area>25600000],
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