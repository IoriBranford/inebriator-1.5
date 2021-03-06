<?xml version="1.0" encoding="UTF-8"?>
<tileset version="1.5" tiledversion="1.7.0" name="emotes" tilewidth="24" tileheight="16" tilecount="32" columns="8" objectalignment="topleft">
 <tileoffset x="-12" y="-16"/>
 <image source="emotes.png" width="192" height="64"/>
 <tile id="0">
  <properties>
   <property name="tilename" value="drunk"/>
  </properties>
  <objectgroup draworder="index" id="2">
   <object id="1" name="hull" type="Fixture" x="0" y="0" width="24" height="16">
    <properties>
     <property name="sensor" type="bool" value="true"/>
    </properties>
   </object>
  </objectgroup>
  <animation>
   <frame tileid="0" duration="125"/>
   <frame tileid="1" duration="125"/>
   <frame tileid="2" duration="125"/>
   <frame tileid="3" duration="125"/>
  </animation>
 </tile>
 <tile id="4">
  <properties>
   <property name="tilename" value="heart"/>
  </properties>
  <animation>
   <frame tileid="4" duration="125"/>
   <frame tileid="5" duration="125"/>
   <frame tileid="6" duration="125"/>
   <frame tileid="7" duration="125"/>
  </animation>
 </tile>
 <tile id="8">
  <properties>
   <property name="tilename" value="sweat"/>
  </properties>
  <animation>
   <frame tileid="8" duration="66"/>
   <frame tileid="9" duration="66"/>
   <frame tileid="10" duration="66"/>
  </animation>
 </tile>
 <tile id="11">
  <properties>
   <property name="tilename" value="help"/>
  </properties>
  <animation>
   <frame tileid="11" duration="125"/>
   <frame tileid="12" duration="125"/>
   <frame tileid="13" duration="125"/>
   <frame tileid="14" duration="125"/>
   <frame tileid="15" duration="125"/>
  </animation>
 </tile>
 <tile id="16">
  <properties>
   <property name="tilename" value="stun"/>
  </properties>
  <animation>
   <frame tileid="16" duration="125"/>
   <frame tileid="17" duration="125"/>
   <frame tileid="18" duration="125"/>
   <frame tileid="17" duration="125"/>
  </animation>
 </tile>
 <tile id="19">
  <properties>
   <property name="tilename" value="hostile"/>
  </properties>
 </tile>
 <tile id="20">
  <properties>
   <property name="tilename" value="angry"/>
  </properties>
  <animation>
   <frame tileid="20" duration="125"/>
   <frame tileid="21" duration="125"/>
   <frame tileid="22" duration="125"/>
  </animation>
 </tile>
 <tile id="24">
  <properties>
   <property name="tilename" value="..."/>
  </properties>
  <animation>
   <frame tileid="24" duration="250"/>
   <frame tileid="25" duration="250"/>
   <frame tileid="26" duration="250"/>
   <frame tileid="27" duration="250"/>
  </animation>
 </tile>
</tileset>
