<?xml version="1.0" encoding="UTF-8"?>
<tileset version="1.5" tiledversion="1.6.0" name="humanshots" tilewidth="32" tileheight="16" tilecount="64" columns="4" objectalignment="topleft">
 <tileoffset x="-24" y="-8"/>
 <properties>
  <property name="commoncollision" type="int" value="0"/>
 </properties>
 <image source="humanshots.png" width="128" height="256"/>
 <tile id="0">
  <properties>
   <property name="tilename" value="pike"/>
  </properties>
  <objectgroup draworder="index" id="2">
   <object id="2" name="hull" type="Fixture" x="22" y="7" width="4" height="2">
    <properties>
     <property name="sensor" type="bool" value="true"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="1">
  <properties>
   <property name="tilename" value="holy"/>
  </properties>
 </tile>
 <tile id="2">
  <properties>
   <property name="tilename" value="axe"/>
  </properties>
  <animation>
   <frame tileid="2" duration="66"/>
   <frame tileid="3" duration="66"/>
   <frame tileid="6" duration="66"/>
   <frame tileid="7" duration="66"/>
  </animation>
 </tile>
 <tile id="3">
  <properties>
   <property name="tilename" value=""/>
  </properties>
 </tile>
 <tile id="4">
  <properties>
   <property name="tilename" value="sword"/>
  </properties>
  <objectgroup draworder="index" id="2">
   <object id="2" name="hull" type="Fixture" x="22" y="7" width="6" height="2">
    <properties>
     <property name="sensor" type="bool" value="true"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="5">
  <properties>
   <property name="tilename" value="arrow"/>
  </properties>
  <objectgroup draworder="index" id="2">
   <object id="2" name="hull" type="Fixture" x="20" y="7" width="8" height="2">
    <properties>
     <property name="sensor" type="bool" value="true"/>
    </properties>
   </object>
  </objectgroup>
 </tile>
 <tile id="6">
  <properties>
   <property name="tilename" value=""/>
  </properties>
 </tile>
 <tile id="7">
  <properties>
   <property name="tilename" value=""/>
  </properties>
 </tile>
 <tile id="8">
  <properties>
   <property name="tilename" value="magic"/>
  </properties>
 </tile>
 <tile id="9">
  <properties>
   <property name="tilename" value="ballista"/>
  </properties>
 </tile>
 <tile id="10">
  <properties>
   <property name="tilename" value="electric"/>
  </properties>
  <animation>
   <frame tileid="10" duration="66"/>
   <frame tileid="11" duration="66"/>
  </animation>
 </tile>
 <tile id="11">
  <properties>
   <property name="tilename" value=""/>
  </properties>
 </tile>
 <tile id="12">
  <properties>
   <property name="tilename" value="water"/>
  </properties>
  <animation>
   <frame tileid="12" duration="66"/>
   <frame tileid="13" duration="66"/>
   <frame tileid="14" duration="66"/>
   <frame tileid="15" duration="66"/>
  </animation>
 </tile>
 <tile id="13">
  <properties>
   <property name="tilename" value=""/>
  </properties>
 </tile>
 <tile id="14">
  <properties>
   <property name="tilename" value=""/>
  </properties>
 </tile>
 <tile id="15">
  <properties>
   <property name="tilename" value=""/>
  </properties>
 </tile>
 <tile id="16">
  <properties>
   <property name="tilename" value="firearrow"/>
  </properties>
  <animation>
   <frame tileid="16" duration="66"/>
   <frame tileid="17" duration="66"/>
   <frame tileid="18" duration="66"/>
   <frame tileid="19" duration="66"/>
  </animation>
 </tile>
 <tile id="17">
  <properties>
   <property name="tilename" value=""/>
  </properties>
 </tile>
 <tile id="18">
  <properties>
   <property name="tilename" value=""/>
  </properties>
 </tile>
 <tile id="19">
  <properties>
   <property name="tilename" value=""/>
  </properties>
 </tile>
 <tile id="20">
  <properties>
   <property name="tilename" value="catapult"/>
  </properties>
  <animation>
   <frame tileid="20" duration="66"/>
   <frame tileid="21" duration="66"/>
   <frame tileid="22" duration="66"/>
   <frame tileid="23" duration="66"/>
  </animation>
 </tile>
 <tile id="21">
  <properties>
   <property name="tilename" value=""/>
  </properties>
 </tile>
 <tile id="22">
  <properties>
   <property name="tilename" value=""/>
  </properties>
 </tile>
 <tile id="23">
  <properties>
   <property name="tilename" value=""/>
  </properties>
 </tile>
 <tile id="24">
  <properties>
   <property name="tilename" value="blood"/>
  </properties>
  <animation>
   <frame tileid="24" duration="66"/>
   <frame tileid="25" duration="66"/>
   <frame tileid="26" duration="66"/>
   <frame tileid="27" duration="66"/>
  </animation>
 </tile>
 <tile id="25">
  <properties>
   <property name="tilename" value=""/>
  </properties>
 </tile>
 <tile id="26">
  <properties>
   <property name="tilename" value=""/>
  </properties>
 </tile>
 <tile id="27">
  <properties>
   <property name="tilename" value=""/>
  </properties>
 </tile>
 <tile id="28">
  <properties>
   <property name="tilename" value="fire"/>
  </properties>
  <animation>
   <frame tileid="28" duration="66"/>
   <frame tileid="29" duration="66"/>
   <frame tileid="30" duration="66"/>
   <frame tileid="31" duration="66"/>
  </animation>
 </tile>
 <tile id="29">
  <properties>
   <property name="tilename" value=""/>
  </properties>
 </tile>
 <tile id="30">
  <properties>
   <property name="tilename" value=""/>
  </properties>
 </tile>
 <tile id="31">
  <properties>
   <property name="tilename" value=""/>
  </properties>
 </tile>
 <tile id="32">
  <properties>
   <property name="tilename" value="spiritfire"/>
  </properties>
  <animation>
   <frame tileid="32" duration="66"/>
   <frame tileid="33" duration="66"/>
   <frame tileid="34" duration="66"/>
   <frame tileid="35" duration="66"/>
  </animation>
 </tile>
 <tile id="33">
  <properties>
   <property name="tilename" value=""/>
  </properties>
 </tile>
 <tile id="34">
  <properties>
   <property name="tilename" value=""/>
  </properties>
 </tile>
 <tile id="35">
  <properties>
   <property name="tilename" value=""/>
  </properties>
 </tile>
 <tile id="36">
  <properties>
   <property name="tilename" value="poisongas"/>
  </properties>
  <animation>
   <frame tileid="36" duration="66"/>
   <frame tileid="37" duration="66"/>
   <frame tileid="38" duration="66"/>
   <frame tileid="39" duration="66"/>
   <frame tileid="40" duration="66"/>
   <frame tileid="41" duration="66"/>
   <frame tileid="42" duration="66"/>
   <frame tileid="43" duration="66"/>
  </animation>
 </tile>
 <tile id="37">
  <properties>
   <property name="tilename" value=""/>
  </properties>
 </tile>
 <tile id="38">
  <properties>
   <property name="tilename" value=""/>
  </properties>
 </tile>
 <tile id="39">
  <properties>
   <property name="tilename" value=""/>
  </properties>
 </tile>
 <tile id="40">
  <properties>
   <property name="tilename" value=""/>
  </properties>
 </tile>
 <tile id="41">
  <properties>
   <property name="tilename" value=""/>
  </properties>
 </tile>
 <tile id="42">
  <properties>
   <property name="tilename" value=""/>
  </properties>
 </tile>
 <tile id="43">
  <properties>
   <property name="tilename" value=""/>
  </properties>
 </tile>
 <tile id="44">
  <properties>
   <property name="tilename" value="fireblast"/>
  </properties>
  <animation>
   <frame tileid="44" duration="66"/>
   <frame tileid="45" duration="66"/>
   <frame tileid="46" duration="66"/>
   <frame tileid="47" duration="66"/>
   <frame tileid="48" duration="66"/>
   <frame tileid="49" duration="66"/>
   <frame tileid="50" duration="66"/>
   <frame tileid="51" duration="66"/>
  </animation>
 </tile>
 <tile id="45">
  <properties>
   <property name="tilename" value=""/>
  </properties>
 </tile>
 <tile id="46">
  <properties>
   <property name="tilename" value=""/>
  </properties>
 </tile>
 <tile id="47">
  <properties>
   <property name="tilename" value=""/>
  </properties>
 </tile>
 <tile id="48">
  <properties>
   <property name="tilename" value=""/>
  </properties>
 </tile>
 <tile id="49">
  <properties>
   <property name="tilename" value=""/>
  </properties>
 </tile>
 <tile id="50">
  <properties>
   <property name="tilename" value=""/>
  </properties>
 </tile>
 <tile id="51">
  <properties>
   <property name="tilename" value=""/>
  </properties>
 </tile>
 <tile id="52">
  <properties>
   <property name="tilename" value="kunai"/>
  </properties>
 </tile>
 <tile id="53">
  <properties>
   <property name="tilename" value="barbed"/>
  </properties>
 </tile>
 <tile id="54">
  <properties>
   <property name="tilename" value="wingmanhypnotized"/>
  </properties>
 </tile>
 <tile id="55">
  <properties>
   <property name="tilename" value="stone"/>
  </properties>
 </tile>
 <tile id="56">
  <properties>
   <property name="tilename" value="axeblade"/>
  </properties>
 </tile>
 <tile id="57">
  <properties>
   <property name="tilename" value="trident"/>
  </properties>
 </tile>
 <tile id="58">
  <properties>
   <property name="tilename" value="feather"/>
  </properties>
 </tile>
 <tile id="59">
  <properties>
   <property name="tilename" value=""/>
  </properties>
 </tile>
 <tile id="60">
  <properties>
   <property name="tilename" value="poison"/>
  </properties>
  <animation>
   <frame tileid="60" duration="66"/>
   <frame tileid="61" duration="66"/>
   <frame tileid="62" duration="66"/>
   <frame tileid="63" duration="66"/>
  </animation>
 </tile>
 <tile id="61">
  <properties>
   <property name="tilename" value=""/>
  </properties>
 </tile>
 <tile id="62">
  <properties>
   <property name="tilename" value=""/>
  </properties>
 </tile>
 <tile id="63">
  <properties>
   <property name="tilename" value=""/>
  </properties>
 </tile>
</tileset>
