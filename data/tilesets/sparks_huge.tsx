<?xml version="1.0" encoding="UTF-8"?>
<tileset version="1.5" tiledversion="1.6.0" name="sparks_huge" tilewidth="96" tileheight="96" tilecount="20" columns="5" objectalignment="topleft">
 <tileoffset x="-48" y="-48"/>
 <image source="sparks_huge.png" width="480" height="384"/>
 <tile id="0">
  <properties>
   <property name="tilename" value="explosion"/>
  </properties>
  <animation>
   <frame tileid="0" duration="67"/>
   <frame tileid="1" duration="67"/>
   <frame tileid="2" duration="67"/>
   <frame tileid="3" duration="67"/>
   <frame tileid="4" duration="67"/>
   <frame tileid="5" duration="67"/>
   <frame tileid="6" duration="67"/>
   <frame tileid="7" duration="67"/>
   <frame tileid="8" duration="67"/>
   <frame tileid="9" duration="67"/>
  </animation>
 </tile>
 <tile id="10">
  <properties>
   <property name="tilename" value="playerexplosion"/>
  </properties>
  <objectgroup draworder="index" id="2">
   <object id="1" name="blast" type="Fixture" x="6" y="6" width="84" height="84">
    <properties>
     <property name="sensor" type="bool" value="true"/>
    </properties>
    <ellipse/>
   </object>
  </objectgroup>
  <animation>
   <frame tileid="10" duration="83"/>
   <frame tileid="11" duration="83"/>
   <frame tileid="12" duration="83"/>
   <frame tileid="13" duration="83"/>
   <frame tileid="14" duration="83"/>
   <frame tileid="15" duration="83"/>
   <frame tileid="16" duration="83"/>
   <frame tileid="17" duration="83"/>
   <frame tileid="18" duration="83"/>
   <frame tileid="19" duration="83"/>
  </animation>
 </tile>
</tileset>
