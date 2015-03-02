/* LABELS.MSS CONTENTS:
 * - place names
 * - area labels
 * - waterway labels 
 */

/* Font sets are defined in palette.mss */

// =====================================================================
// AREA LABELS
// =====================================================================

#area_label {
  // Bring in labels gradually as one zooms in, bases on polygon area
  [zoom>=10][area>102400000],
  [zoom>=11][area>25600000],
  [zoom>=13][area>1600000],
  [zoom>=14][area>320000],
  [zoom>=15][area>80000],
  [zoom>=16][area>20000],
  [zoom>=17][area>5000],
  [zoom>=18][area>=0] {
    text-name: "[name]";
    text-halo-radius: 1.5;
    text-face-name:@sans;
    text-size: 11;
    text-wrap-width:30;
    text-fill: #888;
    text-halo-fill: #fff;
    // Specific style overrides for different types of areas:
    [type='park'][zoom>=10] {
      text-face-name: @sans_lt_italic;
      text-fill: @park * 0.6;
      text-halo-fill: lighten(@park, 10);
    }
    [type='golf_course'][zoom>=10] {
      text-fill: @sports * 0.6;
      text-halo-fill: lighten(@sports, 10);
    }
    [type='cemetery'][zoom>=10] {
      text-fill: @cemetery * 0.6;
      text-halo-fill: lighten(@cemetery, 10);
    }
    [type='hospital'][zoom>=10] {
      text-fill: @hospital * 0.6;
      text-halo-fill: lighten(@hospital, 10);
    }
    [type='college'][zoom>=10],
    [type='school'][zoom>=10],
    [type='university'][zoom>=10] {
      text-fill: @school * 0.6;
      text-halo-fill: lighten(@school, 10);
    }
    [type='water'][zoom>=10] {
      text-fill: @water * 0.6;
      text-halo-fill: lighten(@water, 10);
    }
  }
  [zoom=15][area>1600000],
  [zoom=16][area>80000],
  [zoom=17][area>20000],
  [zoom=18][area>5000] {
    text-name: "[name]";
    text-size: 13;
    text-wrap-width: 60;
    text-character-spacing: 1;
    text-halo-radius: 2;
  }
  [zoom=16][area>1600000],
  [zoom=17][area>80000],
  [zoom=18][area>20000] {
    text-size: 15;
    text-character-spacing: 2;
    text-wrap-width: 120;
  }
  [zoom>=17][area>1600000],
  [zoom>=18][area>80000] {
    text-size: 20;
    text-character-spacing: 3;
    text-wrap-width: 180;
  }
}
   
#poi[type='university'][zoom>=15],
#poi[type='hospital'][zoom>=16],
#poi[type='school'][zoom>=17],
#poi[type='library'][zoom>=17] {
  text-name:"[name]";
  text-face-name:@sans;
  text-size:10;
  text-wrap-width:30;
  text-fill: @poi_text;
}







#building-text {
  [way_area >= 150000][zoom >= 14],
  [way_area >= 80000][zoom >= 15],
  [way_area >= 20000][zoom >= 16],
  [zoom >= 17] {
    text-name: "[name]";
    text-size: 11;
    text-fill: #444;
    text-face-name: @sans;
    text-halo-radius: 1;
    text-wrap-width: 20;
    text-halo-fill: rgba(255,255,255,0.5);
    text-placement: interior;
  }
}

/* ****************************************************************** */
