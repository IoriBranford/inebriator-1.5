<?xml version="1.0" encoding="UTF-8"?>
<tileset version="1.5" tiledversion="1.6.0" name="Amy" tilewidth="64" tileheight="64" tilecount="28" columns="4" objectalignment="topleft">
 <editorsettings>
  <export target="Amy.lua" format="lua"/>
 </editorsettings>
 <tileoffset x="-32" y="-32"/>
 <properties>
  <property name="commoncollision" type="int" value="0"/>
 </properties>
 <image source="Amy.png" width="256" height="448"/>
 <tile id="0">
  <properties>
   <property name="tilename" value="forward"/>
  </properties>
  <objectgroup draworder="index" id="5">
   <object id="4" name="hull" type="Fixture" x="28" y="28" width="8" height="8">
    <ellipse/>
   </object>
   <object id="7" name="wingman1" x="8" y="40">
    <point/>
   </object>
   <object id="8" name="wingman2" x="56" y="40">
    <point/>
   </object>
   <object id="10" name="wingman3" x="16" y="16">
    <point/>
   </object>
   <object id="11" name="wingman4" x="48" y="16">
    <point/>
   </object>
   <object id="12" name="focuswingman1" x="12" y="24">
    <point/>
   </object>
   <object id="13" name="focuswingman2" x="52" y="24">
    <point/>
   </object>
   <object id="14" name="focuswingman3" x="0" y="12">
    <point/>
   </object>
   <object id="15" name="focuswingman4" x="64" y="12">
    <point/>
   </object>
  </objectgroup>
  <animation>
   <frame tileid="0" duration="100"/>
   <frame tileid="1" duration="150"/>
   <frame tileid="2" duration="100"/>
   <frame tileid="3" duration="150"/>
  </animation>
 </tile>
 <tile id="1" type="PlayerAmy"/>
 <tile id="2" type="PlayerAmy"/>
 <tile id="3" type="PlayerAmy"/>
 <tile id="4" type="PlayerAmy">
  <properties>
   <property name="nextanim" value="left"/>
   <property name="tilename" value="lefttilt"/>
  </properties>
  <animation>
   <frame tileid="4" duration="67"/>
   <frame tileid="5" duration="67"/>
   <frame tileid="6" duration="67"/>
   <frame tileid="7" duration="67"/>
  </animation>
 </tile>
 <tile id="5" type="PlayerAmy"/>
 <tile id="6" type="PlayerAmy"/>
 <tile id="7" type="PlayerAmy">
  <properties>
   <property name="nextanim" value="forward"/>
   <property name="tilename" value="leftuntilt"/>
  </properties>
  <animation>
   <frame tileid="7" duration="100"/>
   <frame tileid="6" duration="100"/>
   <frame tileid="5" duration="100"/>
   <frame tileid="4" duration="100"/>
  </animation>
 </tile>
 <tile id="8" type="PlayerAmy">
  <properties>
   <property name="tilename" value="left"/>
  </properties>
  <animation>
   <frame tileid="8" duration="100"/>
   <frame tileid="9" duration="100"/>
   <frame tileid="10" duration="100"/>
   <frame tileid="11" duration="100"/>
  </animation>
 </tile>
 <tile id="9" type="PlayerAmy"/>
 <tile id="10" type="PlayerAmy"/>
 <tile id="11" type="PlayerAmy"/>
 <tile id="12" type="PlayerAmy">
  <properties>
   <property name="nextanim" value="right"/>
   <property name="tilename" value="righttilt"/>
  </properties>
  <animation>
   <frame tileid="12" duration="100"/>
   <frame tileid="13" duration="100"/>
   <frame tileid="14" duration="100"/>
   <frame tileid="15" duration="100"/>
  </animation>
 </tile>
 <tile id="13" type="PlayerAmy"/>
 <tile id="14" type="PlayerAmy"/>
 <tile id="15" type="PlayerAmy">
  <properties>
   <property name="nextanim" value="forward"/>
   <property name="tilename" value="rightuntilt"/>
  </properties>
  <animation>
   <frame tileid="15" duration="100"/>
   <frame tileid="14" duration="100"/>
   <frame tileid="13" duration="100"/>
   <frame tileid="12" duration="100"/>
  </animation>
 </tile>
 <tile id="16" type="PlayerAmy">
  <properties>
   <property name="tilename" value="right"/>
  </properties>
  <animation>
   <frame tileid="16" duration="100"/>
   <frame tileid="17" duration="100"/>
   <frame tileid="18" duration="100"/>
   <frame tileid="19" duration="100"/>
  </animation>
 </tile>
 <tile id="17" type="PlayerAmy"/>
 <tile id="18" type="PlayerAmy"/>
 <tile id="19" type="PlayerAmy"/>
 <tile id="20" type="PlayerAmy">
  <properties>
   <property name="nextanim" value="bomblaunch"/>
   <property name="tilename" value="bombready"/>
  </properties>
  <animation>
   <frame tileid="20" duration="50"/>
   <frame tileid="21" duration="50"/>
   <frame tileid="22" duration="50"/>
   <frame tileid="23" duration="50"/>
   <frame tileid="24" duration="50"/>
   <frame tileid="25" duration="50"/>
  </animation>
 </tile>
 <tile id="21" type="PlayerAmy"/>
 <tile id="22" type="PlayerAmy"/>
 <tile id="23" type="PlayerAmy"/>
 <tile id="24" type="PlayerAmy"/>
 <tile id="25" type="PlayerAmy"/>
 <tile id="26" type="PlayerAmy">
  <properties>
   <property name="nextanim" value="forward"/>
   <property name="tilename" value="bomblaunch"/>
  </properties>
  <animation>
   <frame tileid="26" duration="50"/>
   <frame tileid="27" duration="50"/>
  </animation>
 </tile>
 <tile id="27" type="PlayerAmy"/>
</tileset>
