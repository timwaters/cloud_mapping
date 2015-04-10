/* xray_BASE.MSS CONTENTS
 * Cloud Mapping Telecom features 
 * - Street Furniture
 * - Telecom Towers 
 * - Cables 
 * - Buildings
 *
 * taken from kosmtik style
 */

Map {
  background-color: #000;
  }


#mast{
  marker-width: 4;
  marker-line-width: 0;
  marker-allow-overlap:true;
  marker-fill: rgba(218,223,225,0.5);

  text-name: "[name]";
  text-size: 12;
  text-face-name: @sans;
  text-wrap-width: 60;
  text-allow-overlap: true;
  text-dy: 6;
  text-fill: rgba(218,223,225,0.75);
}

#manhole{
  marker-width: 4;
  marker-line-width: 0;
  marker-allow-overlap:true;
  marker-fill: rgba(217,30,24,0.5);

}

#towers{
  marker-width: 4;
  marker-line-width: 0;
  marker-allow-overlap:true;
  marker-fill: rgba(102,51,153,0.5);

  text-name: "[name]";
  text-size: 12;
  text-face-name: @sans;
  text-wrap-width: 60;
  text-allow-overlap: true;
  text-dy: 6;
  text-fill: rgba(102,51,153,0.75);


}

#tele_line{
  line-width: 1;
  line-color: rgba(68,108,179,0.5);

}

#submarine_cable{
  line-width: 1;
  line-color: rgba(247,202,24,0.5);


}

#poles{
  marker-width: 4;
  marker-line-width: 0;
  marker-allow-overlap:true;
  marker-fill: rgba(38,166,91,0.5);

}

#cabinet{

  marker-width: 4;
  marker-line-width: 0;
  marker-allow-overlap:true;
  marker-fill: rgba(78,205,196,0.5);

}

#tele_exchange_points {
  marker-width: 4;
  marker-line-width: 0;
  marker-allow-overlap:true;
  marker-fill: rgba(219,10,91,0.5);
}

#data_centre {
  line-width: 0.5;
  line-color: rgba(135,211,124,0.5);
  polygon-fill:  rgba(135,211,124,0.05);
}

#tele_office{
  line-width: 0.5;
  line-color: rgba(218,223,225,0.5);
  polygon-fill:  rgba(218,223,225,0.05);
}

#tele_exchange_buildings{
  line-width: 0.5;
  line-color: rgba(217,30,24,0.5) ;
  polygon-fill: rgba(217,30,24,0.05);
}

#tele_exchange_buildings_scaled{
  line-width: 0.5;
  line-color: rgba(102,51,153,0.5);
  polygon-fill:  rgba(102,51,153,0.05);

}

#data_centre_scaled {
  line-width: 0.5;
  line-color: rgba(68,108,179,0.5);
  polygon-fill:  rgba(68,108,179,0.05);
}

#tele_office_scaled {
  line-width: 0.5;
  line-color: rgba(247,202,24,0.5);
  polygon-fill:  rgba(247,202,24,0.05);
}

#building-text {
  line-width: 0.5;
  line-color: rgba(247,202,24,0.5);
  polygon-fill:  rgba(247,202,24,0.05);
}




















