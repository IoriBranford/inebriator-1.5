<?xml version="1.0" encoding="UTF-8"?>
<tileset version="1.5" tiledversion="1.6.0" name="winecivilians" tilewidth="24" tileheight="32" tilecount="96" columns="24" objectalignment="topleft">
 <tileoffset x="-12" y="-16"/>
 <properties>
  <property name="colname00" value="waiter"/>
  <property name="colname03" value="waitress"/>
  <property name="colname06" value="guest_grandpa"/>
  <property name="colname09" value="guest_grandma"/>
  <property name="colname12" value="guest_dad"/>
  <property name="colname15" value="guest_mom"/>
  <property name="colname18" value="guest_son"/>
  <property name="colname21" value="guest_daughter"/>
  <property name="colstype" value="state"/>
  <property name="commonanimation" type="int" value="0"/>
  <property name="commoncollision" type="int" value="0"/>
  <property name="numdirections" type="int" value="4"/>
  <property name="rowstype" value="direction"/>
 </properties>
 <image source="winecivilians.png" width="576" height="128"/>
 <tile id="0">
  <objectgroup draworder="index">
   <object id="2" type="CollisionCivilian" x="6" y="12" width="12" height="16">
    <properties>
     <property name="sensor" type="bool" value="false"/>
    </properties>
   </object>
  </objectgroup>
  <animation>
   <frame tileid="0" duration="100"/>
   <frame tileid="1" duration="100"/>
   <frame tileid="2" duration="100"/>
   <frame tileid="1" duration="100"/>
  </animation>
 </tile>
 <tile id="6">
  <animation>
   <frame tileid="6" duration="100"/>
   <frame tileid="7" duration="100"/>
   <frame tileid="8" duration="100"/>
   <frame tileid="7" duration="100"/>
  </animation>
 </tile>
 <tile id="9">
  <animation>
   <frame tileid="9" duration="100"/>
   <frame tileid="10" duration="100"/>
   <frame tileid="11" duration="100"/>
   <frame tileid="10" duration="100"/>
  </animation>
 </tile>
 <tile id="12">
  <animation>
   <frame tileid="12" duration="100"/>
   <frame tileid="13" duration="100"/>
   <frame tileid="14" duration="100"/>
   <frame tileid="13" duration="100"/>
  </animation>
 </tile>
 <tile id="15">
  <animation>
   <frame tileid="15" duration="100"/>
   <frame tileid="16" duration="100"/>
   <frame tileid="17" duration="100"/>
   <frame tileid="16" duration="100"/>
  </animation>
 </tile>
 <tile id="18">
  <animation>
   <frame tileid="18" duration="100"/>
   <frame tileid="19" duration="100"/>
   <frame tileid="20" duration="100"/>
   <frame tileid="19" duration="100"/>
  </animation>
 </tile>
 <tile id="21">
  <animation>
   <frame tileid="21" duration="100"/>
   <frame tileid="22" duration="100"/>
   <frame tileid="23" duration="100"/>
   <frame tileid="22" duration="100"/>
  </animation>
 </tile>
 <tile id="54">
  <animation>
   <frame tileid="54" duration="100"/>
   <frame tileid="55" duration="100"/>
   <frame tileid="56" duration="100"/>
   <frame tileid="55" duration="100"/>
  </animation>
 </tile>
 <tile id="57">
  <animation>
   <frame tileid="57" duration="100"/>
   <frame tileid="58" duration="100"/>
   <frame tileid="59" duration="100"/>
   <frame tileid="58" duration="100"/>
  </animation>
 </tile>
 <tile id="60">
  <animation>
   <frame tileid="60" duration="100"/>
   <frame tileid="61" duration="100"/>
   <frame tileid="62" duration="100"/>
   <frame tileid="61" duration="100"/>
  </animation>
 </tile>
 <tile id="63">
  <animation>
   <frame tileid="63" duration="100"/>
   <frame tileid="64" duration="100"/>
   <frame tileid="65" duration="100"/>
   <frame tileid="64" duration="100"/>
  </animation>
 </tile>
 <tile id="66">
  <animation>
   <frame tileid="66" duration="100"/>
   <frame tileid="67" duration="100"/>
   <frame tileid="68" duration="100"/>
   <frame tileid="67" duration="100"/>
  </animation>
 </tile>
 <tile id="69">
  <animation>
   <frame tileid="69" duration="100"/>
   <frame tileid="70" duration="100"/>
   <frame tileid="71" duration="100"/>
   <frame tileid="70" duration="100"/>
  </animation>
 </tile>
 <tile id="72">
  <animation>
   <frame tileid="72" duration="100"/>
   <frame tileid="73" duration="100"/>
   <frame tileid="74" duration="100"/>
   <frame tileid="73" duration="100"/>
  </animation>
 </tile>
 <tile id="75">
  <animation>
   <frame tileid="75" duration="100"/>
   <frame tileid="76" duration="100"/>
   <frame tileid="77" duration="100"/>
   <frame tileid="76" duration="100"/>
  </animation>
 </tile>
</tileset>
