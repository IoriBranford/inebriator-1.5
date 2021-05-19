<?xml version="1.0" encoding="UTF-8"?>
<tileset version="1.5" tiledversion="1.6.0" name="demonshots" tilewidth="32" tileheight="32" tilecount="8" columns="1" objectalignment="topleft">
 <tileoffset x="-16" y="-16"/>
 <image source="demonshots.png" width="32" height="256"/>
 <tile id="0">
  <properties>
   <property name="tilename" value="player_lv0"/>
  </properties>
  <objectgroup draworder="index" id="3">
   <object id="2" name="hull" type="Fixture" x="8" y="10" width="16" height="12"/>
  </objectgroup>
 </tile>
 <tile id="1">
  <properties>
   <property name="tilename" value="player_lv1"/>
  </properties>
  <objectgroup draworder="index" id="2">
   <object id="1" name="hull" type="Fixture" x="8" y="8" width="16" height="16"/>
  </objectgroup>
 </tile>
 <tile id="2">
  <properties>
   <property name="tilename" value="player_lv2"/>
  </properties>
  <objectgroup draworder="index" id="2">
   <object id="1" name="hull" type="Fixture" x="8" y="6" width="16" height="20"/>
  </objectgroup>
 </tile>
 <tile id="3">
  <properties>
   <property name="tilename" value="player_lv3"/>
  </properties>
  <objectgroup draworder="index" id="2">
   <object id="1" name="hull" type="Fixture" x="8" y="4" width="16" height="24"/>
  </objectgroup>
 </tile>
 <tile id="4">
  <properties>
   <property name="tilename" value="player_lv4"/>
  </properties>
  <objectgroup draworder="index" id="2">
   <object id="1" name="hull" type="Fixture" x="8" y="2" width="16" height="28"/>
  </objectgroup>
 </tile>
 <tile id="5">
  <properties>
   <property name="tilename" value="wingman"/>
  </properties>
  <objectgroup draworder="index" id="2">
   <object id="1" name="hull" type="Fixture" x="10" y="10" width="12" height="12">
    <ellipse/>
   </object>
  </objectgroup>
 </tile>
 <tile id="6">
  <properties>
   <property name="tilename" value="bombshrapnel"/>
  </properties>
  <objectgroup draworder="index" id="2">
   <object id="1" name="hull" type="Fixture" x="8" y="8" width="16" height="16">
    <ellipse/>
   </object>
  </objectgroup>
 </tile>
</tileset>
