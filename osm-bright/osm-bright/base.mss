/* BASE.MSS CONTENTS
 * Cloud Mapping Telecom features 
 * - Street Furniture
 * - Telecom Towers 
 * - Cables 
 * - Buildings
 *
 * Colours and font sets are in palette.mss
 */



/* ================================================================== */
/* TELECOMS
/* ================================================================== */

#manhole[zoom>=13]{
  marker-fill:@manhole;
  marker-width:7;
  [zoom<=15]{
    marker-width:2
  }
}

#cabinet[zoom>=16] {
  point-file: url('symbols/cabinet.20.png');
}

#cabinet[zoom>=12][zoom<=15]{
  marker-fill:@cabinet;
  marker-line-color:@cabinet;
  marker-allow-overlap:true;
  [zoom<=15] {
    marker-width:5;
  }
  [zoom<=13]{
    marker-width:2;
  }
}

#mast[zoom>=12]{
  marker-width: 15;
  marker-file: url('symbols/mast-communications-18.svg');
  [zoom>=14]{
    marker-width: 20;
    marker-file: url('symbols/mast-communications-18.svg');
    text-name: "[name]";
    text-size: 12;
    text-face-name: @sans;
    text-wrap-width: 60;
    text-allow-overlap: true;
    text-dy: 12;

    text-fill: #FFFFFF;
    text-halo-radius: 1.5;
    text-halo-fill: #444;
  }
}

#towers[zoom>=5]{
  [zoom>=5]{

    [man_made='communications_tower']{
      marker-width: 25;
      marker-file: url('symbols/mast-communications-18.svg');
    }
  }

  [zoom>=10]{
    [man_made='tower']{
      marker-width: 20;
      marker-file: url('symbols/mast-communications-18.svg');
    }
  }

  [zoom>=13]{
    [man_made='communications_tower']{
      marker-width: 30;
      marker-file: url('symbols/mast-communications-18.svg');
    }

    text-name: "[name]";
    text-size: 12;
    text-face-name: @sans;
    text-wrap-width: 60;
    text-allow-overlap: true;
    text-dy: 12;

    text-fill: #FFFFFF;
    text-halo-radius: 1.5;
    text-halo-fill: #444;
  }
}




#submarine_cable {
  line-width: 2;
  [zoom<=6]{line-width:1;}
  line-cap: round;
  line-dasharray: 5, 20
    line-opacity 0.7;
  line-color: @submarine_cable;
  [type='telephone']{ 
    line-color: @submarine_cable_tele;
  }
  [type='fibre_optic']{
    line-color: @submarine_cable_fibre;
  }
}

#tele_line[zoom>=13] {
  line-width: 2;
  line-cap: round;
  line-join: round;
  line-color: #000;
}

#poles[zoom>=12]{
  marker-width:5;
  marker-fill: #A97D0E;
  marker-line-color: #A97D0E;
  [zoom<14]{
    marker-width:2;
  }
}


#tele_office[zoom<=13]{
  polygon-fill:@tele_office;
  polygon-opacity: 0.1;
  point-allow-overlap: true;
  point-file: url('symbols/warehouse-24.png');
  [zoom<=7] {  

    point-allow-overlap: false;
    point-file: url('symbols/warehouse-18.png'); }
}
#tele_office[zoom>=16][zoom<=19] {
  building-fill:@tele_office;
  [zoom>=14] {
    line-color:darken(@tele_office,5%);
    line-width:0.5;
  }
  [zoom>=16] {
    line-color:darken(@tele_office,10%);
    line-width:0.6;
    building-height:1.25;
  }
}

#tele_office_scaled[zoom>=12][zoom<=15]{
  building-fill:@tele_office;
  line-width: 1;
  line-color:darken(@tele_office, 20%);
}

#data_centre[zoom<=13]{
  polygon-fill: @data_centre;
  polygon-opacity: 0.1;
  point-allow-overlap: true;
  point-file: url('symbols/warehouse-24.png');
  [zoom<=7] { 

    point-allow-overlap: false;
    point-file: url('symbols/warehouse-18.png'); }
}

#data_centre[zoom>=16][zoom<=19] {
  building-fill:@data_centre;
  [zoom>=14] {
    line-color:darken(@data_centre,5%);
    line-width:0.5;
  }
  [zoom>=16] {
    line-color:darken(@data_centre,10%);
    line-width:0.6;
    building-height:1.25;
  }
}

#data_centre_scaled[zoom>=12][zoom<=15]{
  building-fill:@data_centre;
  line-width: 1;
  line-color:darken(@data_centre, 20%);
}


#tele_exchange_points{
  point-allow-overlap: true;
  point-file: url('symbols/commercial-24.png');
  [zoom<=7] {   

    point-allow-overlap: false;
    point-file: url('symbols/commercial-18.png'); }
}


#tele_exchange_buildings[zoom<=11]{
  polygon-fill: @tele_exchange;
  polygon-opacity: 0.1;
  point-allow-overlap: true;
  point-file: url('symbols/commercial-24.png');
  [zoom<=7] {  

    point-allow-overlap: false;
    point-file: url('symbols/commercial-18.png'); }
}

#tele_exchange_buildings[zoom>=16][zoom<=19]{
  building-fill: @tele_exchange;
  building-height: 2.25;
  line-color: darken(@tele_exchange,10%);
  line-width: 0.6;

}

#tele_exchange_buildings_scaled[zoom>=12][zoom<=15]{
  building-fill: @tele_exchange;
  line-width: 1;
  line-color:darken(@tele_exchange, 20%);
}



#building-text {
  [zoom >= 12] {
    text-name: "[name]";
    text-size: 14;
    text-face-name: @sans;
    text-fill: #FFFFFF;
    text-halo-radius: 1.5;
    text-halo-fill: #444;
    text-wrap-width: 60;
    text-placement: interior;
  }
}
