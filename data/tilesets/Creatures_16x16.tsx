<?xml version="1.0" encoding="UTF-8"?>
<tileset version="1.5" tiledversion="1.6.0" name="Creatures_16x16" tilewidth="16" tileheight="16" tilecount="4" columns="4">
 <tileoffset x="-8" y="-8"/>
 <image source="Creatures_16x16.png" width="64" height="16"/>
 <tile id="0">
  <objectgroup draworder="index" id="2">
   <object id="1" name="hull" type="Fixture" x="0" y="0" width="16" height="16">
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
