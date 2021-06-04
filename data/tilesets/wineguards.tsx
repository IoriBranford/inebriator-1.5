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
  <properties>
   <property name="tilename" value="Knight0"/>
  </properties>
  <objectgroup draworder="index">
   <object id="4" type="CollisionEnemy" x="6" y="12" width="12" height="16">
    <properties>
     <property name="sensor" type="bool" value="false"/>
    </properties>
   </object>
  </objectgroup>
  <animation>
   <frame tileid="0" duration="100"/>
   <frame tileid="1" duration="100"/>
   <frame tileid="2" duration="100"/>
  </animation>
 </tile>
 <tile id="3">
  <properties>
   <property name="tilename" value="Pawn0"/>
  </properties>
  <animation>
   <frame tileid="3" duration="100"/>
   <frame tileid="4" duration="100"/>
   <frame tileid="5" duration="100"/>
  </animation>
 </tile>
 <tile id="6">
  <properties>
   <property name="tilename" value="Rook0"/>
  </properties>
  <animation>
   <frame tileid="6" duration="100"/>
   <frame tileid="7" duration="100"/>
   <frame tileid="8" duration="100"/>
  </animation>
 </tile>
 <tile id="9">
  <properties>
   <property name="tilename" value="Bishop0"/>
  </properties>
  <animation>
   <frame tileid="9" duration="100"/>
   <frame tileid="10" duration="100"/>
   <frame tileid="11" duration="100"/>
  </animation>
 </tile>
 <tile id="12">
  <properties>
   <property name="tilename" value="King0"/>
  </properties>
  <animation>
   <frame tileid="12" duration="100"/>
   <frame tileid="13" duration="100"/>
   <frame tileid="14" duration="100"/>
  </animation>
 </tile>
 <tile id="15">
  <properties>
   <property name="tilename" value="Queen0"/>
  </properties>
  <animation>
   <frame tileid="15" duration="100"/>
   <frame tileid="16" duration="100"/>
   <frame tileid="17" duration="100"/>
  </animation>
 </tile>
 <tile id="18">
  <properties>
   <property name="tilename" value="Knight1"/>
  </properties>
  <animation>
   <frame tileid="18" duration="100"/>
   <frame tileid="19" duration="100"/>
   <frame tileid="20" duration="100"/>
  </animation>
 </tile>
 <tile id="21">
  <properties>
   <property name="tilename" value="Pawn1"/>
  </properties>
  <objectgroup draworder="index" id="2">
   <object id="1" name="hull" type="Fixture" x="6" y="8" width="12" height="16">
    <properties>
     <property name="sensor" type="bool" value="true"/>
    </properties>
   </object>
  </objectgroup>
  <animation>
   <frame tileid="21" duration="100"/>
   <frame tileid="22" duration="100"/>
   <frame tileid="23" duration="100"/>
  </animation>
 </tile>
 <tile id="24">
  <properties>
   <property name="tilename" value="Rook1"/>
  </properties>
  <animation>
   <frame tileid="24" duration="100"/>
   <frame tileid="25" duration="100"/>
   <frame tileid="26" duration="100"/>
  </animation>
 </tile>
 <tile id="27">
  <properties>
   <property name="tilename" value="Bishop1"/>
  </properties>
  <animation>
   <frame tileid="27" duration="100"/>
   <frame tileid="28" duration="100"/>
   <frame tileid="29" duration="100"/>
  </animation>
 </tile>
 <tile id="30">
  <properties>
   <property name="tilename" value="King1"/>
  </properties>
  <animation>
   <frame tileid="30" duration="100"/>
   <frame tileid="31" duration="100"/>
   <frame tileid="32" duration="100"/>
  </animation>
 </tile>
 <tile id="33">
  <properties>
   <property name="tilename" value="Queen1"/>
  </properties>
  <animation>
   <frame tileid="33" duration="100"/>
   <frame tileid="34" duration="100"/>
   <frame tileid="35" duration="100"/>
  </animation>
 </tile>
 <tile id="36">
  <properties>
   <property name="tilename" value="Knight2"/>
  </properties>
  <animation>
   <frame tileid="36" duration="100"/>
   <frame tileid="37" duration="100"/>
   <frame tileid="38" duration="100"/>
  </animation>
 </tile>
 <tile id="39">
  <properties>
   <property name="tilename" value="Pawn2"/>
  </properties>
  <animation>
   <frame tileid="39" duration="100"/>
   <frame tileid="40" duration="100"/>
   <frame tileid="41" duration="100"/>
  </animation>
 </tile>
 <tile id="42">
  <properties>
   <property name="tilename" value="Rook2"/>
  </properties>
  <animation>
   <frame tileid="42" duration="100"/>
   <frame tileid="43" duration="100"/>
   <frame tileid="44" duration="100"/>
  </animation>
 </tile>
 <tile id="45">
  <properties>
   <property name="tilename" value="Bishop2"/>
  </properties>
  <animation>
   <frame tileid="45" duration="100"/>
   <frame tileid="46" duration="100"/>
   <frame tileid="47" duration="100"/>
  </animation>
 </tile>
 <tile id="48">
  <properties>
   <property name="tilename" value="King2"/>
  </properties>
  <animation>
   <frame tileid="48" duration="100"/>
   <frame tileid="49" duration="100"/>
   <frame tileid="50" duration="100"/>
  </animation>
 </tile>
 <tile id="51">
  <properties>
   <property name="tilename" value="Queen2"/>
  </properties>
  <animation>
   <frame tileid="51" duration="100"/>
   <frame tileid="52" duration="100"/>
   <frame tileid="53" duration="100"/>
  </animation>
 </tile>
 <tile id="54">
  <properties>
   <property name="tilename" value="Knight3"/>
  </properties>
  <animation>
   <frame tileid="54" duration="100"/>
   <frame tileid="55" duration="100"/>
   <frame tileid="56" duration="100"/>
  </animation>
 </tile>
 <tile id="57">
  <properties>
   <property name="tilename" value="Pawn3"/>
  </properties>
  <animation>
   <frame tileid="57" duration="100"/>
   <frame tileid="58" duration="100"/>
   <frame tileid="59" duration="100"/>
  </animation>
 </tile>
 <tile id="60">
  <properties>
   <property name="tilename" value="Rook3"/>
  </properties>
  <animation>
   <frame tileid="60" duration="100"/>
   <frame tileid="61" duration="100"/>
   <frame tileid="62" duration="100"/>
  </animation>
 </tile>
 <tile id="63">
  <properties>
   <property name="tilename" value="Bishop3"/>
  </properties>
  <animation>
   <frame tileid="63" duration="100"/>
   <frame tileid="64" duration="100"/>
   <frame tileid="65" duration="100"/>
  </animation>
 </tile>
 <tile id="66">
  <properties>
   <property name="tilename" value="King3"/>
  </properties>
  <animation>
   <frame tileid="66" duration="100"/>
   <frame tileid="67" duration="100"/>
   <frame tileid="68" duration="100"/>
  </animation>
 </tile>
 <tile id="69">
  <properties>
   <property name="tilename" value="Queen3"/>
  </properties>
  <animation>
   <frame tileid="69" duration="100"/>
   <frame tileid="70" duration="100"/>
   <frame tileid="71" duration="100"/>
  </animation>
 </tile>
 <tile id="72">
  <objectgroup draworder="index">
   <object id="1" type="CollisionEnemy" x="0" y="12" width="24" height="16">
    <properties>
     <property name="sensor" type="bool" value="false"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="75">
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
  <objectgroup draworder="index">
   <object id="2" type="CollisionEnemy" x="0" y="8" width="24" height="16">
    <properties>
     <property name="sensor" type="bool" value="false"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="84">
  <objectgroup draworder="index">
   <object id="1" type="CollisionEnemy" x="0" y="8" width="24" height="16">
    <properties>
     <property name="sensor" type="bool" value="false"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="87">
  <objectgroup draworder="index">
   <object id="1" type="CollisionEnemy" x="0" y="10" width="24" height="16">
    <properties>
     <property name="sensor" type="bool" value="false"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
</tileset>
