<?xml version="1.0" encoding="UTF-8"?>
<tileset version="1.5" tiledversion="1.6.0" name="Creatures_32x32" tilewidth="32" tileheight="32" tilecount="4" columns="4" objectalignment="topleft">
 <tileoffset x="-16" y="-16"/>
 <image source="Creatures_32x32.png" width="128" height="32"/>
 <tile id="0">
  <objectgroup draworder="index" id="2">
   <object id="1" name="hull" type="Fixture" x="4" y="4" width="24" height="24">
    <ellipse/>
   </object>
  </objectgroup>
  <animation>
   <frame tileid="0" duration="100"/>
   <frame tileid="1" duration="100"/>
   <frame tileid="2" duration="100"/>
   <frame tileid="3" duration="100"/>
  </animation>
 </tile>
</tileset>
