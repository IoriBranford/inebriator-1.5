<?xml version="1.0" encoding="UTF-8"?>
<tileset version="1.5" tiledversion="1.6.0" name="winebomb" tilewidth="18" tileheight="12" tilecount="2" columns="1" objectalignment="topleft">
 <tileoffset x="-9" y="-6"/>
 <image source="winebomb.png" width="18" height="24"/>
 <tile id="0">
  <objectgroup draworder="index">
   <object id="1" x="6" y="0" width="12" height="12">
    <properties>
     <property name="collidable" type="bool" value="true"/>
    </properties>
    <ellipse/>
   </object>
  </objectgroup>
  <animation>
   <frame tileid="0" duration="67"/>
   <frame tileid="1" duration="67"/>
  </animation>
 </tile>
</tileset>
