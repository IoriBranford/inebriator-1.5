<?xml version="1.0" encoding="UTF-8"?>
<tileset version="1.5" tiledversion="1.6.0" name="wineguards" tilewidth="24" tileheight="32" tilecount="90" columns="18" objectalignment="topleft">
 <tileoffset x="-12" y="-16"/>
 <properties>
  <property name="colstype" value="state"/>
  <property name="commonanimation" type="int" value="0"/>
  <property name="commoncollision" type="int" value="0"/>
  <property name="numdirections" type="int" value="4"/>
  <property name="rowstype" value="direction"/>
 </properties>
 <image source="wineguards.png" width="432" height="160"/>
 <tile id="0">
  <objectgroup draworder="index">
   <object id="4" type="CollisionEnemy" x="6" y="12" width="12" height="16">
    <properties>
     <property name="sensor" type="bool" value="false"/>
    </properties>
   </object>
  </objectgroup>
  <animation>
   <frame tileid="0" duration="125"/>
   <frame tileid="1" duration="125"/>
   <frame tileid="2" duration="125"/>
   <frame tileid="1" duration="125"/>
  </animation>
 </tile>
 <tile id="21">
  <objectgroup draworder="index" id="2">
   <object id="1" name="hull" type="Fixture" x="6" y="8" width="12" height="16">
    <properties>
     <property name="sensor" type="bool" value="true"/>
    </properties>
   </object>
  </objectgroup>
  <animation>
   <frame tileid="21" duration="150"/>
   <frame tileid="22" duration="150"/>
   <frame tileid="23" duration="150"/>
   <frame tileid="22" duration="150"/>
  </animation>
 </tile>
 <tile id="72">
  <properties>
   <property name="tilename" value="kocaptain"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" type="CollisionEnemy" x="0" y="12" width="24" height="16">
    <properties>
     <property name="sensor" type="bool" value="false"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="75">
  <properties>
   <property name="tilename" value="koguard"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" type="CollisionEnemy" x="0" y="13" width="24" height="16">
    <properties>
     <property name="sensor" type="bool" value="false"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="78">
  <objectgroup draworder="index">
   <object id="1" type="CollisionEnemy" x="0" y="12" width="24" height="16">
    <properties>
     <property name="sensor" type="bool" value="false"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="81">
  <properties>
   <property name="tilename" value="konun"/>
  </properties>
  <objectgroup draworder="index">
   <object id="2" type="CollisionEnemy" x="0" y="8" width="24" height="16">
    <properties>
     <property name="sensor" type="bool" value="false"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="84">
  <properties>
   <property name="tilename" value="kohighpriest"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" type="CollisionEnemy" x="0" y="8" width="24" height="16">
    <properties>
     <property name="sensor" type="bool" value="false"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="87">
  <properties>
   <property name="tilename" value="kohighpriestess"/>
  </properties>
  <objectgroup draworder="index">
   <object id="1" type="CollisionEnemy" x="0" y="10" width="24" height="16">
    <properties>
     <property name="sensor" type="bool" value="false"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
</tileset>
