/* BASE.MSS CONTENTS
 * - Landuse & landcover
 * - Water areas
 * - Water ways
 * - Administrative Boundaries
 *
 */



/* ================================================================== */
/* TELECOMS
/* ================================================================== */



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

#mast[zoom>=6]{
  point-file: url('symbols/mast.p.20.png');
  [zoom<=8]{
  	point-file: url('symbols/mast.p.18.png');
  }
}

#tower[zoom>=5]{
  point-file: url('symbols/communications.p.20.png');
  [zoom<=8]{
  	point-file: url('symbols/communications.p.18.png');
  }
}
#big_tower{
  point-file: url('symbols/comms_tower.p.25.png');
  [zoom<=6]{
  	point-file: url('symbols/comms_tower.p.20.png');
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
    point-allow-overlap: true;
    point-file: url('symbols/warehouse-24.png');
    [zoom<=7] {  
    
    point-allow-overlap: false;
    point-file: url('symbols/warehouse-18.png'); }
}
#tele_office[zoom>=14][zoom<=19] {
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



#data_center[zoom<=13]{
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
}


#tele_exchange_points{
    point-allow-overlap: true;
    point-file: url('symbols/commercial-24.png');
    [zoom<=7] {   
    
    point-allow-overlap: false;
    point-file: url('symbols/commercial-18.png'); }
}


#tele_exchange_buildings[zoom<=11]{
    point-allow-overlap: true;
    point-file: url('symbols/commercial-24.png');
    [zoom<=7] {  
    
    point-allow-overlap: false;
    point-file: url('symbols/commercial-18.png'); }
}

#tele_exchange_buildings[zoom>=16][zoom<=19]{
  building-fill:@tele_office;
  building-height:2.25;
    line-color:darken(@tele_office,10%);
    line-width:0.6;
 
}

#tele_exchange_buildings_scaled[zoom>=12][zoom<=15]{
  building-fill:@tele_office;
}
