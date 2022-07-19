import 'package:data_table_2/data_table_2.dart';
import 'dart:collection';
import 'package:tuple/tuple.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'data_source.dart';
import 'character.dart';

HashMap<Tuple2<Character,Category>, List<DataColumn>> getMap() {
  var headerMap = HashMap<Tuple2<Character,Category>, List<DataColumn>>();
  headerMap[Tuple2<Character,Category>(Character.anji, Category.normals)] = anjiHeaderNormals;
  headerMap[Tuple2<Character,Category>(Character.anji, Category.specials)] = anjiHeaderSpecials;
  headerMap[Tuple2<Character,Category>(Character.anji, Category.supers)] = anjiHeaderSupers;
  headerMap[Tuple2<Character,Category>(Character.axl, Category.normals)] = axlHeaderNormals;
  headerMap[Tuple2<Character,Category>(Character.axl, Category.specials)] = axlHeaderSpecials;
  headerMap[Tuple2<Character,Category>(Character.axl, Category.supers)] = axlHeaderSupers;
  headerMap[Tuple2<Character,Category>(Character.chipp, Category.normals)] = chippHeaderNormals;
  headerMap[Tuple2<Character,Category>(Character.chipp, Category.specials)] = chippHeaderSpecials;
  headerMap[Tuple2<Character,Category>(Character.chipp, Category.supers)] = chippHeaderSupers;
  headerMap[Tuple2<Character,Category>(Character.faust, Category.normals)] = faustHeaderNormals;
  headerMap[Tuple2<Character,Category>(Character.faust, Category.specials)] = faustHeaderSpecials;
  headerMap[Tuple2<Character,Category>(Character.faust, Category.supers)] = faustHeaderSupers;
  headerMap[Tuple2<Character,Category>(Character.giovanna, Category.normals)] = giovannaHeaderNormals;
  headerMap[Tuple2<Character,Category>(Character.giovanna, Category.specials)] = giovannaHeaderSpecials;
  headerMap[Tuple2<Character,Category>(Character.giovanna, Category.supers)] = giovannaHeaderSupers;
  headerMap[Tuple2<Character,Category>(Character.goldlewis, Category.normals)] = goldlewisHeaderNormals;
  headerMap[Tuple2<Character,Category>(Character.goldlewis, Category.specials)] = goldlewisHeaderSpecials;
  headerMap[Tuple2<Character,Category>(Character.goldlewis, Category.supers)] = goldlewisHeaderSupers;
  headerMap[Tuple2<Character,Category>(Character.ino, Category.normals)] = inoHeaderNormals;
  headerMap[Tuple2<Character,Category>(Character.ino, Category.specials)] = inoHeaderSpecials;
  headerMap[Tuple2<Character,Category>(Character.ino, Category.supers)] = inoHeaderSupers;
  headerMap[Tuple2<Character,Category>(Character.jacko, Category.normals)] = jackoHeaderNormals;
  headerMap[Tuple2<Character,Category>(Character.jacko, Category.specials)] = jackoHeaderSpecials;
  headerMap[Tuple2<Character,Category>(Character.jacko, Category.supers)] = jackoHeaderSupers;
  headerMap[Tuple2<Character,Category>(Character.ky, Category.normals)] = kyHeaderNormals;
  headerMap[Tuple2<Character,Category>(Character.ky, Category.specials)] = kyHeaderSpecials;
  headerMap[Tuple2<Character,Category>(Character.ky, Category.supers)] = kyHeaderSupers;
  headerMap[Tuple2<Character,Category>(Character.leo, Category.normals)] = leoHeaderNormals;
  headerMap[Tuple2<Character,Category>(Character.leo, Category.specials)] = leoHeaderSpecials;
  headerMap[Tuple2<Character,Category>(Character.leo, Category.supers)] = leoHeaderSupers;
  headerMap[Tuple2<Character,Category>(Character.may, Category.normals)] = mayHeaderNormals;
  headerMap[Tuple2<Character,Category>(Character.may, Category.specials)] = mayHeaderSpecials;
  headerMap[Tuple2<Character,Category>(Character.may, Category.supers)] = mayHeaderSupers;
  headerMap[Tuple2<Character,Category>(Character.millia, Category.normals)] = milliaHeaderNormals;
  headerMap[Tuple2<Character,Category>(Character.millia, Category.specials)] = milliaHeaderSpecials;
  headerMap[Tuple2<Character,Category>(Character.millia, Category.supers)] = milliaHeaderSupers;
  headerMap[Tuple2<Character,Category>(Character.nagoriyuki, Category.normals)] = nagoriyukiHeaderNormals;
  headerMap[Tuple2<Character,Category>(Character.nagoriyuki, Category.specials)] = nagoriyukiHeaderSpecials;
  headerMap[Tuple2<Character,Category>(Character.nagoriyuki, Category.supers)] = nagoriyukiHeaderSupers;
  headerMap[Tuple2<Character,Category>(Character.potemkin, Category.normals)] = potemkinHeaderNormals;
  headerMap[Tuple2<Character,Category>(Character.potemkin, Category.specials)] = potemkinHeaderSpecials;
  headerMap[Tuple2<Character,Category>(Character.potemkin, Category.supers)] = potemkinHeaderSupers;
  headerMap[Tuple2<Character,Category>(Character.ramlethal, Category.normals)] = ramlethalHeaderNormals;
  headerMap[Tuple2<Character,Category>(Character.ramlethal, Category.specials)] = ramlethalHeaderSpecials;
  headerMap[Tuple2<Character,Category>(Character.ramlethal, Category.supers)] = ramlethalHeaderSupers;
  headerMap[Tuple2<Character,Category>(Character.sol, Category.normals)] = solHeaderNormals;
  headerMap[Tuple2<Character,Category>(Character.sol, Category.specials)] = solHeaderSpecials;
  headerMap[Tuple2<Character,Category>(Character.sol, Category.supers)] = solHeaderSupers;
  headerMap[Tuple2<Character,Category>(Character.zato, Category.normals)] = zatoHeaderNormals;
  headerMap[Tuple2<Character,Category>(Character.zato, Category.specials)] = zatoHeaderSpecials;
  headerMap[Tuple2<Character,Category>(Character.zato, Category.supers)] = zatoHeaderSupers;
  return headerMap;
}

var anjiNormals = [
["5P", "26", "All", "6", "5", "9", "-2", "+1", "", "1", "none", "80%", ],
["5K", "30", "All", "8", "5", "9", "-2", "+1", "", "1", "none", "90%", ],
["c.S", "42", "All", "7", "7", "14", "-2", "+1", "", "4", "none", "100%", ],
["f.S", "33", "All", "12", "2", "21", "-9", "-6", "", "2", "none", "90%", ],
["5H", "44", "All", "15", "4", "23", "-8", "-5", "", "4", "none", "100%", ],
["2P", "22", "All", "6", "2", "10", "-2", "+1", "", "0", "none", "80%", ],
["2K", "25", "Low", "7", "3", "11", "-2", "+1", "", "1", "none", "70%", ],
["2S", "31", "Low", "12", "4", "16", "-6", "-3", "", "2", "none", "90%", ],
["2H", "44", "All", "22", "4", "19", "-4", "", "", "4", "none", "100%", ],
["j.P", "23", "High", "9", "2", "5", "", "", "", "0", "none", "80%", ],
["j.K", "26", "High", "6", "4", "15", "", "", "", "1", "none", "80%", ],
["j.S", "31", "High", "7", "5", "20", "", "", "", "2", "none", "80%", ],
["j.H", "39", "High", "13", "3", "27", "", "", "", "2", "none", "80%", ],
["j.D", "42", "High", "8", "6", "18", "", "", "", "3", "none", "80%", ],
["6P", "33", "All", "10", "6", "25", "-17", "", "", "2", "1-3 Upper Body, 4-15 Above Knees", "90%", ],
["6H", "12,12,25", "All", "16", "3(3)3(4)4", "21", "-8", "", "", "2,2,3", "none", "100%", ],
["2D", "31", "Low", "10", "3", "22", "-11", "", "", "2", "none", "90%", ],
["5D", "45 [56]", "High", "20 [28]", "3", "26", "-15 [-10]", "0", "", "2 [4]", "none", "80% [-]", ],
];
var anjiHeaderNormals = [
  DataColumn2(
    label: Text("input"),
    size: ColumnSize.M,
  ),
  DataColumn2(
    label: Text("damage"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("guard"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("startup"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("active"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("recovery"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onBlock"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onHit"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("riscGain"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("level"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("invuln"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("prorate"),
    size: ColumnSize.L,
  ),
];
var anjiSpecials = [
["236P", "Shitsu", "20,40", "All", "38", "71", "Total 66", "-5", "-2", "", "1", "none", "80%", ],
["236K", "Suigetsu No Hakobi", "", "", "", "", "Total 34~50", "", "", "", "", "10-25~41 Guard Point", "", ],
["236S", "Kou", "20,50", "All", "12 [28]", "9(6)5", "14", "", "", "", "3", "1-9 Above Waist, 10-31 Upper Body [10-25 Guard Point]", "90%", ],
["236H", "Fuujin", "35", "All", "17 [33]", "4", "29", "-16", "-13", "", "3", "[10-25 Guard Point]", "100%", ],
["236H P", "Shin: Ichishiki", "32", "All", "30 (43 if early cancelled from Fuujin)", "8", "Total 43+6 after landing", "+4", "+7", "", "1", "none", "80%", ],
["236H K", "Issokutobi", "", "", "", "", "22+6 after landing", "", "", "", "", "", "", ],
["236H S", "Nagiha", "36", "Low", "13 (26 with early cancel)", "4", "20", "-7", "", "", "3", "", "90%", ],
["236H H", "Rin", "45", "High", "25 (38 with early cancel)", "2", "30", "-15", "", "", "3", "", "80%", ],
];
var anjiHeaderSpecials = [
  DataColumn2(
    label: Text("input"),
    size: ColumnSize.M,
  ),
  DataColumn2(
    label: Text("name"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("damage"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("guard"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("startup"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("active"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("recovery"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onBlock"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onHit"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("riscGain"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("level"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("invuln"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("prorate"),
    size: ColumnSize.L,
  ),
];
var anjiSupers = [
["632146H", "Issei Ougi: Sai", "13*6,60", "All", "11+6", "", "", "-30", "", "", "", "", "100%", ],
["632146S", "Kachoufuugetsu Kai", "", "", "", "", "Total 32", "", "", "", "", "1-?? Guard", "", ],
["632146S Attack", "Kachoufuugetsu Kai", "66,15*4,60", "All", "", "", "", "-1", "", "", "", "", "100%", ],
];
var anjiHeaderSupers = [
  DataColumn2(
    label: Text("input"),
    size: ColumnSize.M,
  ),
  DataColumn2(
    label: Text("name"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("damage"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("guard"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("startup"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("active"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("recovery"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onBlock"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onHit"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("riscGain"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("level"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("invuln"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("prorate"),
    size: ColumnSize.L,
  ),
];
var anjiData = <Category, List<List<String>>>{
  Category.normals: anjiNormals,
  Category.specials: anjiSpecials,
  Category.supers: anjiSupers
};var axlNormals = [
["5P", "40 [52]", "All", "7", "6", "19", "-11", "-8", "", "2 [3]", "", "80%", ],
["5K", "30", "All", "6", "3", "11", "-2", "+1", "", "1", "", "90%", ],
["c.S", "40", "All", "8", "6", "15", "-4", "-1", "", "3", "", "100%", ],
["f.S", "34", "All", "10", "3", "25", "-14", "-11", "", "2", "", "90%", ],
["5H", "48", "All", "16", "4", "19", "-4", "-1", "", "4", "", "100%", ],
["2P", "30 [39]", "Low", "10", "4", "21", "-13", "-10", "", "1", "", "80%", ],
["2K", "26", "Low", "7", "5", "9", "-2", "+1", "", "1", "", "70%", ],
["2S", "35 [45]", "All", "9", "10", "23", "-16", "-13", "", "3 [4]", "", "80%", ],
["2H", "45 [58]", "Low", "11", "9", "26", "-18", "-15", "", "3 [4]", "", "90%", ],
["j.P", "32 [41]", "High", "9", "4", "23", "", "", "", "1 [2]", "", "80%", ],
["j.K", "28", "High", "8", "3", "16", "", "", "", "1", "", "80%", ],
["j.S", "32 [41]", "High", "11", "7", "18", "", "", "", "2 [3]", "", "80%", ],
["j.H", "40 [52]", "High", "12", "6", "25", "", "", "", "2 [3]", "", "80%", ],
["j.D", "44", "High", "10", "5", "22", "", "", "", "3", "", "80%", ],
["6P", "30", "All", "12", "5", "18", "-13", "+2", "", "2", "1~4F Upper Body &lt;br/&gt; 5~12F Above Knees", "90%", ],
["6K", "40 [52]", "All", "11", "5", "25", "-13", "-10", "", "3 [4]", "", "90%", ],
["6H", "54", "High", "27", "9", "13", "-3", "0", "", "4", "", "80%", ],
["2D", "34", "Low", "10", "6", "17", "-9", "HKD", "", "2", "", "90%", ],
["5D", "45 [56]", "High", "20 [28]", "6", "23", "-15 [-10]", "0 [KD]", "", "2 [4]", "", "80% [-]", ],
];
var axlHeaderNormals = [
  DataColumn2(
    label: Text("input"),
    size: ColumnSize.M,
  ),
  DataColumn2(
    label: Text("damage"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("guard"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("startup"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("active"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("recovery"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onBlock"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onHit"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("riscGain"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("level"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("invuln"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("prorate"),
    size: ColumnSize.L,
  ),
];
var axlSpecials = [
["[4]6S", "Sickle Flash", "15*3", "All", "24", "15", "29", "-19~-9", "KD", "", "3", "", "80%", ],
["[4]6S 8", "Soaring Chain Strike", "30", "All", "8", "16", "34", "-11", "HKD", "", "3", "", "80%", ],
["[4]6S 2", "Spinning Chain Strike", "15*5", "Low", "7", "36 [79]", "19", "-6", "HKD", "", "2", "", "90%", ],
["[4]6S S", "Winter Cherry", "40 [60]", "All", "18 [22]", "10", "24", "-3 [+10]", "KD", "", "3 [4]", "", "80%", ],
["41236H", "Winter Mantis", "61 [62]", "Ground Throw", "28", "20", "34", "", "HKD", "", "", "", "50%", ],
["214S", "Rainwater", "40", "All", "24", "3", "21", "+3", "KD", "", "3", "", "80%", ],
["214H", "Snail", "45", "All", "14", "12", "29", "-24", "KD", "", "3", "", "100%", ],
["j.214H", "Snail", "45", "All", "16", "9", "Until L+10", "-25", "KD", "", "3", "", "100%", ],
["j.623H", "Axl Bomber", "80", "All", "9", "10", "Until L+7", "-22", "HKD", "", "4", "", "100%", ],
];
var axlHeaderSpecials = [
  DataColumn2(
    label: Text("input"),
    size: ColumnSize.M,
  ),
  DataColumn2(
    label: Text("name"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("damage"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("guard"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("startup"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("active"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("recovery"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onBlock"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onHit"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("riscGain"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("level"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("invuln"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("prorate"),
    size: ColumnSize.L,
  ),
];
var axlSupers = [
["236236H", "Sickle Storm", "50*2, 20*3", "All", "11+1", "8(24)13", "26", "-2", "HKD", "", "", "1~15F Strike", "100%", ],
["632146P", "One Vision", "", "", "5+22", "", "", "", "", "", "", "", "", ],
["632146P Attack", "One Vision", "", "All", "8+0", "1", "", "", "", "", "", "", "100%", ],
];
var axlHeaderSupers = [
  DataColumn2(
    label: Text("input"),
    size: ColumnSize.M,
  ),
  DataColumn2(
    label: Text("name"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("damage"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("guard"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("startup"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("active"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("recovery"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onBlock"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onHit"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("riscGain"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("level"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("invuln"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("prorate"),
    size: ColumnSize.L,
  ),
];
var axlData = <Category, List<List<String>>>{
  Category.normals: axlNormals,
  Category.specials: axlSpecials,
  Category.supers: axlSupers
};var chippNormals = [
["5P", "20", "All", "3", "2", "10", "-2", "+1", "", "0", "", "80%", ],
["5K", "24", "All", "6", "5", "8", "-3", "0", "", "0", "", "80%", ],
["c.S", "38", "All", "7", "6", "13", "-2", "+1", "", "3", "", "100%", ],
["f.S", "30", "All", "9", "2", "20", "-8", "-5", "", "2", "", "90%", ],
["5H", "42", "All", "11", "7", "16", "-4", "-1", "", "4", "", "100%", ],
["2P", "18", "All", "5", "2", "10", "-2", "+1", "", "0", "", "80%", ],
["2K", "18", "Low", "5", "4", "8", "-2", "+1", "", "0", "", "70%", ],
["2S", "28", "All", "10", "4", "17", "-7", "-4", "", "2", "", "90%", ],
["2H", "36", "All", "12", "9", "24", "-14", "KD", "", "4", "", "100%", ],
["j.P", "16", "High", "5", "4", "8", "", "", "", "0", "", "80%", ],
["j.K", "16*2", "High", "6", "2(3)2", "8", "", "", "", "1", "", "80%", ],
["j.S", "32", "High", "9", "4", "18", "", "", "", "2", "", "80%", ],
["j.H", "22*2", "High", "9", "3*4", "17", "", "", "", "2", "", "80%", ],
["j.D", "44", "High", "8", "4", "22", "", "", "", "2", "", "80%", ],
["6P", "26", "All", "9", "5", "25", "-16", "-13", "", "3", "Head", "90%", ],
["6K", "35", "High", "20", "5", "9", "-2", "+1", "", "1", "", "80%", ],
["6H", "50", "All", "17", "6", "18", "-5", "-2", "", "4", "", "100%", ],
["j.2K", "14 x n", "High", "16", "", "", "", "", "", "1", "", "80%", ],
["2D", "30", "Low", "10", "2", "19", "-7", "HKD", "", "2", "", "90%", ],
["5D", "40 [50]", "High", "20 [28]", "5", "24", "-15 [-10]", "0 [KD]", "", "2 [4]", "", "80% [-]", ],
];
var chippHeaderNormals = [
  DataColumn2(
    label: Text("input"),
    size: ColumnSize.M,
  ),
  DataColumn2(
    label: Text("damage"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("guard"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("startup"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("active"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("recovery"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onBlock"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onHit"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("riscGain"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("level"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("invuln"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("prorate"),
    size: ColumnSize.L,
  ),
];
var chippSpecials = [
["236P", "Alpha Blade (Horizontal)", "38", "All", "29", "3", "19", "-4", "KD", "", "1", "", "80%", ],
["j.236P", "Alpha Blade (Horizontal)", "38", "All", "29", "3", "", "", "KD", "", "1", "", "80%", ],
["236K", "Alpha Blade (Diagonal)", "36", "All", "24", "3", "17", "-2", "KD", "", "1", "", "80%", ],
["j.236K", "Alpha Blade (Diagonal)", "35", "All", "37", "3", "", "-7", "KD", "", "1", "", "80%", ],
["623S", "Beta Blade", "30, 26", "All", "7", "20", "23", "-27", "KD", "", "2", "1~8 Strike", "80%", ],
["j.623S", "Beta Blade", "30, 26", "All", "7", "20", "Until L+??", "", "KD", "", "2", "1~8 Strike", "80%", ],
["236H", "Gamma Blade", "30", "All", "25", "", "", "+6", "+9", "", "1", "", "80%", ],
["236S", "Resshou", "28", "All", "13", "5", "16", "-4", "-1", "", "3", "", "100%", ],
["236S 236S", "Rokusai", "35", "Low", "8", "2", "21", "-6", "-3", "", "3", "", "90%", ],
["236S 236K", "Senshuu", "40", "High", "25", "6", "27", "-16", "HKD", "", "3", "", "80%", ],
["63214S", "Genrouzan", "20,20,67", "Throw", "27", "11", "15", "N/A", "HKD", "", "", "", "50%", ],
["j.214P", "Shuriken", "10", "All", "22", "Until Hit", "Total&#160;??", "", "", "", "0", "", "80%", ],
];
var chippHeaderSpecials = [
  DataColumn2(
    label: Text("input"),
    size: ColumnSize.M,
  ),
  DataColumn2(
    label: Text("name"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("damage"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("guard"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("startup"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("active"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("recovery"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onBlock"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onHit"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("riscGain"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("level"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("invuln"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("prorate"),
    size: ColumnSize.L,
  ),
];
var chippSupers = [
["236236K", "Banki Messai", "15*5, 9*3, 30", "All", "6+1", "", "", "-20", "HKD", "", "", "", "100%", ],
["632146H", "Zansei Rouga", "10*4, 135", "All", "20+1", "", "", "", "HKD", "", "", "", "100%", ],
["j.632146H", "Zansei Rouga", "10*4, 135", "All", "13+1", "", "", "", "HKD", "", "", "", "100%", ],
];
var chippHeaderSupers = [
  DataColumn2(
    label: Text("input"),
    size: ColumnSize.M,
  ),
  DataColumn2(
    label: Text("name"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("damage"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("guard"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("startup"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("active"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("recovery"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onBlock"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onHit"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("riscGain"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("level"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("invuln"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("prorate"),
    size: ColumnSize.L,
  ),
];
var chippData = <Category, List<List<String>>>{
  Category.normals: chippNormals,
  Category.specials: chippSpecials,
  Category.supers: chippSupers
};var faustNormals = [
["5P", "25", "All", "6", "4", "8", "-2", "+1", "", "0", "", "80%", ],
["5K", "30", "All", "7", "8", "8", "-2", "+1", "", "2", "", "90%", ],
["c.S", "40", "All", "8", "6", "15", "-4", "-1", "", "3", "", "100%", ],
["f.S", "33", "All", "12", "2", "25", "-13", "-10", "", "2", "", "90%", ],
["5H", "40", "All", "13", "8", "18", "-7", "-4", "", "4", "", "100%", ],
["5HH", "60", "", "1", "", "2", "", "KD", "", "", "", "100%", ],
["2P", "25", "Low", "7", "2", "11", "-3", "0", "", "0", "", "80%", ],
["2K", "12*3", "Low", "7", "2,3,3", "12", "-2", "+1", "", "1", "", "90%", ],
["2S", "32", "All", "11", "9", "26", "-19", "-16", "", "2", "", "100%", ],
["2H", "40", "Low", "14", "2", "29", "-12", "KD", "", "4", "", "90%", ],
["j.P", "20", "High", "7", "4", "6", "", "", "", "0", "", "80%", ],
["j.K", "25", "High", "7", "5", "18", "", "", "", "1", "", "80%", ],
["j.S", "32", "High", "14", "3", "20", "", "", "", "2", "", "80%", ],
["j.H", "42", "High", "9", "5", "15", "", "", "", "3", "", "80%", ],
["j.D", "45", "High", "13", "6", "23", "", "", "", "2", "", "80%", ],
["6P", "34", "All", "9", "3", "32", "-21", "KD", "", "2", "", "90%", ],
["6H", "60", "High", "25", "9", "44", "-34", "-31", "", "4", "", "80%", ],
["j.2K", "30", "All", "10", "Until L", "", "", "", "", "2", "", "80%", ],
["2D", "35", "Low", "12", "3", "18", "-4", "HKD", "", "3", "", "90%", ],
["5D", "40 [50]", "High", "20 [28]", "3", "26", "-15 [-10]", "0 [KD]", "", "2 [4]", "", "80% [-]", ],
];
var faustHeaderNormals = [
  DataColumn2(
    label: Text("input"),
    size: ColumnSize.M,
  ),
  DataColumn2(
    label: Text("damage"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("guard"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("startup"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("active"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("recovery"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onBlock"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onHit"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("riscGain"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("level"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("invuln"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("prorate"),
    size: ColumnSize.L,
  ),
];
var faustSpecials = [
["41236K", "Thrust", "40", "All", "26", "12", "19", "-12", "-9", "", "4", "", "100%", ],
["41236K 4", "Pull Back", "0", "", "59", "", "", "", "", "", "", "", "100%", ],
["41236K 4 H", "Home Run!", "80 [120]", "", "9", "", "", "", "", "", "", "", "100%", ],
["236P", "What Could This Be?", "", "", "26", "", "Total 40", "", "", "", "", "", "", ],
["236S", "Mix Mix Mix", "12*4", "All", "21", "", "", "-7", "HKD", "", "3", "", "100%", ],
["j.236S", "Mix Mix Mix", "12*4", "All", "21", "", "", "", "HKD", "", "3", "", "100%", ],
["236H", "Snip Snip Snip", "70", "Ground Throw", "6", "1", "43", "", "", "", "", "", "50%", ],
["j.236P", "Love", "1, 40", "All", "27", "", "Total 48", "", "KD", "", "1, 2", "", "100%", ],
["214P", "Scarecrow", "28*2 [28*3]", "All", "63 [97]", "", "", "-8 [+7]", "HKD", "", "2 [2*2, 4]", "", "100%", ],
["214K", "Scarecrow", "28*2 [28*3]", "All", "63 [97]", "", "", "-8 [+7]", "HKD", "", "2 [2*2, 4]", "", "100%", ],
["214S", "Scarecrow", "50 [70]", "High", "56 [74]", "", "", "-32 [-27]", "HKD", "", "2 [4]", "", "80%", ],
];
var faustHeaderSpecials = [
  DataColumn2(
    label: Text("input"),
    size: ColumnSize.M,
  ),
  DataColumn2(
    label: Text("name"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("damage"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("guard"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("startup"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("active"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("recovery"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onBlock"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onHit"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("riscGain"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("level"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("invuln"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("prorate"),
    size: ColumnSize.L,
  ),
];
var faustSupers = [
["632146H", "Bone-crushing Excitement", "155", "All", "16+5", "3", "48", "-32", "HKD", "", "", "", "100%", ],
["236236P", "W-W-What Could This Be?", "", "", "1+7", "N/A", "Total 43", "N/A", "N/A", "", "", "", "", ],
["236236236P", "W-W-W-W-W-W-W-W-W-What Could This Be?", "", "", "1+7", "N/A", "", "N/A", "N/A", "", "", "", "", ],
];
var faustHeaderSupers = [
  DataColumn2(
    label: Text("input"),
    size: ColumnSize.M,
  ),
  DataColumn2(
    label: Text("name"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("damage"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("guard"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("startup"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("active"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("recovery"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onBlock"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onHit"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("riscGain"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("level"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("invuln"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("prorate"),
    size: ColumnSize.L,
  ),
];
var faustData = <Category, List<List<String>>>{
  Category.normals: faustNormals,
  Category.specials: faustSpecials,
  Category.supers: faustSupers
};var giovannaNormals = [
["5P", "26 (27) [28]", "All", "4", "3", "9", "-2", "+1", "", "0", "", "80%", ],
["5K", "30 (31) [33]", "All", "6", "4", "10", "-2", "+1", "", "1", "", "90%", ],
["c.S", "40 (42) [44]", "All", "7", "6", "10", "+3", "", "", "4", "", "100%", ],
["f.S", "10, 10, 16 [11, 11, 17]", "All", "9", "2(6)2(6)2", "16", "-4", "-1", "", "2", "", "90%", ],
["5H", "45 (47) [49]", "All", "10", "3", "19", "-5", "-2", "", "3", "", "100%", ],
["2P", "22 (23) [24]", "All", "5", "2", "10", "-2", "+1", "", "0", "", "80%", ],
["2K", "28 (29) [30]", "Low", "6", "3", "11", "-2", "+1", "", "1", "", "70%", ],
["2S", "16, 18 [17, 19]", "Low", "9", "3(5)3", "15", "-6", "-3", "", "2", "", "90%", ],
["2H", "40 (42) [44]", "All", "11", "6", "21", "-8", "-5", "", "4", "", "100%", ],
["j.P", "20 (21) [22]", "", "6", "5", "9", "", "", "", "0", "", "80%", ],
["j.K", "25 (26) [27]", "", "6", "3", "19", "", "", "", "1", "", "80%", ],
["j.S", "30 (31) [33]", "", "7", "3", "24", "", "", "", "2", "", "80%", ],
["j.H", "35 (36) [38]", "", "8", "5", "18", "", "", "", "2", "", "80%", ],
["j.D", "25,25 (26,26) [27,27]", "", "7", "3(7)3", "18", "", "", "", "2, 3", "", "80%", ],
["6P", "32 (33) [35]", "All", "12", "8", "15", "-9", "KD", "", "2", "1~4 above the knees, upper body 5~19", "90%", ],
["6H", "32 (33) [35]", "All", "17", "9", "15", "-10", "KD", "", "2", "", "100%", ],
["6HH", "28 (28) [30]", "All", "11", "", "", "-11", "", "", "2", "", "100%", ],
["6HHH", "29 (31) [32]", "All", "13", "", "", "-16", "HKD", "", "3", "", "100%", ],
["2D", "40 (42) [44]", "Low", "17", "10", "7", "-3", "HKD", "", "2", "", "90%", ],
["5D", "45 (47) [49]", "High", "20", "4", "25", "-15", "-0", "", "2", "", "80%", ],
["5[D]", "56 (58) [61]", "High", "28", "4", "25", "-10", "KD", "", "4", "", "100%", ],
];
var giovannaHeaderNormals = [
  DataColumn2(
    label: Text("input"),
    size: ColumnSize.M,
  ),
  DataColumn2(
    label: Text("damage"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("guard"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("startup"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("active"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("recovery"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onBlock"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onHit"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("riscGain"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("level"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("invuln"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("prorate"),
    size: ColumnSize.L,
  ),
];
var giovannaSpecials = [
["236K", "Trovao", "48 (50) [52]", "All", "27", "7", "15", "+2", "+5", "", "4", "", "100%", ],
["214K", "Sepultura", "45 (47) [49]", "All", "13", "3", "20", "-4", "KD", "", "4", "", "100%", ],
["623S", "Sol Nascente", "40 (42) [44]", "All", "7", "14", "21", "-15", "KD", "", "4", "upper body invuln 1~6 above the knees 7~9", "90%", ],
["214S", "Sol Poente", "30 (31) [33]", "All, High", "4 [30]", "6(20)3", "10", "+4", "KD", "", "3", "", "80%", ],
["j.214S", "Sol Poente", "30 (31) [33]", "All, High", "4 [30]", "6(20) 3", "Until L+4", "+4", "KD", "", "3", "", "80%", ],
];
var giovannaHeaderSpecials = [
  DataColumn2(
    label: Text("input"),
    size: ColumnSize.M,
  ),
  DataColumn2(
    label: Text("name"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("damage"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("guard"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("startup"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("active"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("recovery"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onBlock"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onHit"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("riscGain"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("level"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("invuln"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("prorate"),
    size: ColumnSize.L,
  ),
];
var giovannaSupers = [
["632146H", "Ventania", "168 [176]", "All", "4+3", "", "", "-37", "HKD", "", "4", "", "100%", ],
["j.236236H", "Tempestade", "140 [150]", "", "3+1", "Until L", "", "+6", "KD", "", "", "", "100%", ],
];
var giovannaHeaderSupers = [
  DataColumn2(
    label: Text("input"),
    size: ColumnSize.M,
  ),
  DataColumn2(
    label: Text("name"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("damage"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("guard"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("startup"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("active"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("recovery"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onBlock"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onHit"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("riscGain"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("level"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("invuln"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("prorate"),
    size: ColumnSize.L,
  ),
];
var giovannaData = <Category, List<List<String>>>{
  Category.normals: giovannaNormals,
  Category.specials: giovannaSpecials,
  Category.supers: giovannaSupers
};var goldlewisNormals = [
["5P", "26", "All", "7", "3", "6", "+3", "+6", "1000", "1", "none", "80%", ],
["5K", "33", "Low", "10", "9", "12", "-7", "-4", "1125", "2", "none", "70%", ],
["c.S", "39", "All", "7", "6", "15", "-2", "+1", "2500", "4", "none", "", ],
["f.S", "31", "All", "10", "3", "18", "-7", "-4", "1500", "2", "none", "90%", ],
["5H", "41", "All", "19", "6", "15", "-2", "+1", "2500", "4", "none", "", ],
["5D", "50 [62]", "High", "20 [28]", "3", "26", "-15 [-10]", "0 [Launch]", "1125 [1875]", "2 [4]", "none", "80% [~]", ],
["6P", "39", "All", "12", "6", "27", "-19", "-16", "1500", "2", "1-3 upperbody, 4-18 above knees", "90%", ],
["6H", "65", "All", "25", "3", "30", "-14", "-11", "2500", "4", "none", "", ],
["2P", "23", "All", "6", "3", "6", "+3", "+6", "1000", "1", "none", "80%", ],
["2K", "26", "Low", "8", "3", "13", "-5", "-2", "750", "1", "none", "70%", ],
["2S", "29", "All", "13", "3", "20", "-9", "-6", "1500", "2", "none", "90%", ],
["2H", "43", "All", "20", "4", "30", "-15", "KD", "2500", "4", "none", "", ],
["2D", "34", "Low", "14", "3", "24", "-10", "KD", "1500", "3", "none", "90%", ],
["j.P", "25", "", "6", "3", "12", "", "", "375", "0", "none", "80%", ],
["j.K", "29", "High", "9", "4", "17", "", "", "750", "1", "none", "80%", ],
["j.S", "37", "", "11", "11", "13", "", "", "1125", "2", "none", "80%", ],
["j.H", "43", "High", "15", "4", "", "", "", "1125", "2", "none", "80%", ],
["j.D", "47", "High", "15", "10", "", "", "", "1500", "3", "none", "80%", ],
];
var goldlewisHeaderNormals = [
  DataColumn2(
    label: Text("input"),
    size: ColumnSize.M,
  ),
  DataColumn2(
    label: Text("damage"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("guard"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("startup"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("active"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("recovery"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onBlock"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onHit"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("riscGain"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("level"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("invuln"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("prorate"),
    size: ColumnSize.L,
  ),
];
var goldlewisSpecials = [
["41236H", "Behemoth Typhoon", "70", "All (Guard Crush)", "12", "20", "18", "+12", "KD", "2500", "", "none", "", ],
["j.41236H", "Behemoth Typhoon", "70", "All (Guard Crush)", "12", "20", "", "", "", "2500", "", "none", "", ],
["63214H", "Behemoth Typhoon", "70", "All (Guard Crush)", "12", "20", "21", "-5", "KD", "2500", "", "none", "", ],
["j.63214H", "Behemoth Typhoon", "70", "All (Guard Crush)", "12", "20", "", "", "", "2500", "", "none", "", ],
["23698H", "Behemoth Typhoon", "70", "All (Guard Crush)", "12", "15", "18", "+3~12", "", "2500", "", "none", "", ],
["j.23698H", "Behemoth Typhoon", "70", "All (Guard Crush)", "12", "15", "", "", "", "2500", "", "none", "", ],
["21478H", "Behemoth Typhoon", "70", "Low (Guard Crush)", "12", "15", "18", "+3", "KD", "1875", "", "none", "", ],
["j.21478H", "Behemoth Typhoon", "70", "All (Guard Crush)", "12", "15", "", "", "", "2500", "", "none", "", ],
["69874H", "Behemoth Typhoon", "70", "All (Guard Crush)", "12", "20", "21", "-5", "", "2500", "", "none", "", ],
["j.69874H", "Behemoth Typhoon", "70", "All (Guard Crush)", "12", "20", "", "", "", "2500", "", "none", "", ],
["47896H", "Behemoth Typhoon", "70", "High (Guard Crush)", "12", "20", "18", "+14~15", "KD", "2500", "", "none", "", ],
["j.47896H", "Behemoth Typhoon", "70", "All (Guard Crush)", "12", "20", "", "", "", "2500", "", "none", "", ],
["87412H", "Behemoth Typhoon", "70", "Low (Guard Crush)", "12", "15", "18", "+16", "", "1875", "", "none", "", ],
["j.87412H", "Behemoth Typhoon", "70", "All (Guard Crush)", "12", "15", "", "", "", "2500", "", "none", "", ],
["89632H", "Behemoth Typhoon", "70", "High (Guard Crush)", "12", "15", "18", "+12(+14 GI)", "", "1875", "", "none", "", ],
["j.89632H", "Behemoth Typhoon", "70", "All (Guard Crush)", "12", "20", "", "", "", "2500", "", "none", "", ],
["214S Level 1", "Thunderbird", "33", "All", "57", "", "43 Total", "", "", "100x2", "", "none", "", ],
["214S Level 2", "Thunderbird", "40", "All", "57", "", "43 Total", "", "", "100x3", "", "none", "", ],
["214S Level 3", "Thunderbird", "47", "All", "57", "", "43 Total", "", "", "100x4", "", "none", "", ],
["236S Level 1", "Skyfish", "2*10", "All", "34", "", "", "-13", "-10", "100x10", "", "none", "", ],
["236S Level 2", "Skyfish", "2*20", "All", "34", "", "", "-13", "KD", "100x20", "", "none", "", ],
["236S Level 3", "Skyfish", "2*30", "All", "34", "", "", "-13", "KD", "100x30", "", "none", "", ],
];
var goldlewisHeaderSpecials = [
  DataColumn2(
    label: Text("input"),
    size: ColumnSize.M,
  ),
  DataColumn2(
    label: Text("name"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("damage"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("guard"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("startup"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("active"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("recovery"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onBlock"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onHit"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("riscGain"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("level"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("invuln"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("prorate"),
    size: ColumnSize.L,
  ),
];
var goldlewisSupers = [
["632146P", "Down With The System", "160,25", "All", "6+135+4", "5", "46", "-33", "", "", "", "1~14 All", "", ],
["720P", "Down With The System", "160[175],25x2", "All", "11+191+4", "5", "46", "-33", "", "", "", "1~19 All", "", ],
["1080P", "Down With The System", "160[190],25x3", "All", "16+230+4", "5", "46", "-33", "", "", "", "1~24 All", "", ],
["236236K Level 1", "Burn It Down", "8x5", "All", "13+79", "", "40 Total", "", "", "", "", "none", "", ],
["236236K Level 2", "Burn It Down", "8x10", "", "13+79", "", "40 Total", "", "", "", "", "none", "", ],
["236236K Level 3", "Burn It Down", "8x15", "", "13+79", "", "40 Total", "", "", "", "", "none", "", ],
];
var goldlewisHeaderSupers = [
  DataColumn2(
    label: Text("input"),
    size: ColumnSize.M,
  ),
  DataColumn2(
    label: Text("name"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("damage"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("guard"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("startup"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("active"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("recovery"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onBlock"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onHit"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("riscGain"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("level"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("invuln"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("prorate"),
    size: ColumnSize.L,
  ),
];
var goldlewisData = <Category, List<List<String>>>{
  Category.normals: goldlewisNormals,
  Category.specials: goldlewisSpecials,
  Category.supers: goldlewisSupers
};var inoNormals = [
["5P", "22", "All", "5", "4", "9", "-3", "0", "", "0", "", "80%", ],
["5K", "28", "All", "7", "3", "11", "-2", "+1", "", "1", "", "90%", ],
["c.S", "39", "All", "7", "4", "15", "-2", "+1", "", "3", "", "100%", ],
["f.S", "31", "All", "13", "9", "18", "-13", "-10", "", "2", "", "90%", ],
["5H", "41", "All", "15", "4", "23", "-8", "-5", "", "4", "", "100%", ],
["2P", "20", "All", "6", "2", "10", "-2", "+1", "", "0", "", "80%", ],
["2K", "23", "Low", "6", "2", "12", "-2", "+1", "", "1", "", "70%", ],
["2S", "28", "All", "11", "2", "23", "-11", "-8", "", "2", "", "90%", ],
["2H", "42", "All", "11", "8", "14", "-5", "-2", "", "3", "", "100%", ],
["j.P", "18", "High", "5", "4", "12", "", "", "", "0", "", "80%", ],
["j.K", "24", "High", "7", "12", "14", "", "", "", "1", "", "80%", ],
["j.S", "29", "High", "8", "4", "20", "", "", "", "2", "", "80%", ],
["j.H", "41", "High", "12", "5", "22", "", "", "", "2", "", "80%", ],
["j.D", "35", "High", "16", "5", "20", "", "", "", "2", "", "90%", ],
["6P", "34", "All", "9", "5", "18", "-9", "-6", "", "2", "1~13F Upper Body", "90%", ],
["6H", "20,45", "All", "7", "2(12)8", "19", "-8", "KD", "", "3,4", "", "100%", ],
["2D", "33", "Low", "12", "3", "18", "-7", "HKD", "", "2", "", "90%", ],
["5D", "45[56]", "High", "20[28]", "3", "26", "-15[-11]", "0[KD]", "", "2[4]", "", "80%[100%]", ],
];
var inoHeaderNormals = [
  DataColumn2(
    label: Text("input"),
    size: ColumnSize.M,
  ),
  DataColumn2(
    label: Text("damage"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("guard"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("startup"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("active"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("recovery"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onBlock"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onHit"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("riscGain"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("level"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("invuln"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("prorate"),
    size: ColumnSize.L,
  ),
];
var inoSpecials = [
["236S", "Stroke the Big Tree", "36", "Low", "16", "6", "15", "-7", "", "", "2", "5~15F Low Profile", "90%", ],
["236H", "Stroke the Big Tree", "42", "Low", "28", "5", "12", "+2", "", "", "4", "9~27F Low Profile", "90%", ],
["j.236K", "Sultry Performance", "35[50]", "All", "10", "Until Landing", "Until Landing + 18", "-7~(-2) [-1]", "", "", "2[4]", "", "100%", ],
["j.236S", "Sultry Performance", "35[50]", "All", "10", "Until Landing", "Until Landing + 18", "-7~(-4) [-2]", "", "", "2[4]", "", "100%", ],
["j.236H", "Sultry Performance", "10x2,20[10x4,20]", "All", "9", "32", "Until Landing + 6", "?(-7)", "", "", "2[4]", "", "100%", ],
["214P", "Antidepressant Scale", "12+[9x4]", "All", "24", "", "Total 60", "-16", "", "", "0", "", "80%", ],
["j.214P", "Antidepressant Scale", "12+[9x4]", "All", "21", "", "Until Landing", "-16", "", "", "0", "", "80%", ],
["214K", "Chemical Love", "45", "All", "11", "10", "26", "-2", "", "", "4", "", "80%", ],
["j.214K", "Chemical Love", "45", "All", "11", "10", "Until Landing + 7", "", "", "", "4", "", "80%", ],
];
var inoHeaderSpecials = [
  DataColumn2(
    label: Text("input"),
    size: ColumnSize.M,
  ),
  DataColumn2(
    label: Text("name"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("damage"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("guard"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("startup"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("active"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("recovery"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onBlock"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onHit"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("riscGain"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("level"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("invuln"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("prorate"),
    size: ColumnSize.L,
  ),
];
var inoSupers = [
["632146H", "Megalomania", "13*18 (17*11)", "Ground Throw, All", "11+0(41)", "", "", "N/A(-18)", "", "", "N/A(2)", "", "100%", ],
["632146S", "Ultimate Fortissimo", "40,20x2,100", "All (Guard Crush)", "6+2", "", "", "+26", "", "", "4", "", "100%", ],
["j.632146S", "Ultimate Fortissimo", "20x2,100", "All (Guard Crush)", "5+3", "", "", "+37", "", "", "", "", "100%", ],
];
var inoHeaderSupers = [
  DataColumn2(
    label: Text("input"),
    size: ColumnSize.M,
  ),
  DataColumn2(
    label: Text("name"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("damage"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("guard"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("startup"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("active"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("recovery"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onBlock"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onHit"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("riscGain"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("level"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("invuln"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("prorate"),
    size: ColumnSize.L,
  ),
];
var inoData = <Category, List<List<String>>>{
  Category.normals: inoNormals,
  Category.specials: inoSpecials,
  Category.supers: inoSupers
};var jackoNormals = [
["5P", "23", "All", "5", "", "", "-2", "+1", "", "", "none", "80%", ],
["5K", "27", "All", "7", "", "", "-7", "-4", "", "", "none", "80%", ],
["c.S", "39", "All", "7", "", "", "-2", "+1", "", "", "none", "100%", ],
["f.S", "32", "All", "11", "", "", "-9", "-6", "", "", "none", "90%", ],
["5H", "24, 24", "All", "10", "", "", "-6", "KD", "", "", "none", "100%", ],
["2P", "21", "All", "6", "", "", "-3", "0", "", "", "none", "80%", ],
["2K", "24", "Low", "7", "", "", "-5", "-2", "", "", "none", "70%", ],
["2S", "31", "All", "9", "", "", "-15", "-12", "", "", "none", "90%", ],
["2H", "41", "All", "15", "", "", "-5", "KD", "", "", "none", "100%", ],
["j.P", "19", "High", "6", "", "", "", "", "", "", "none", "80%", ],
["j.K", "23", "High", "7", "", "", "", "", "", "", "none", "80%", ],
["j.S", "28", "High", "11", "", "", "", "", "", "", "none", "80%", ],
["j.H", "20, 15", "High", "11", "", "", "", "", "", "", "none", "80%", ],
["j.D", "30", "All", "21", "", "", "", "", "", "", "none", "80%", ],
["6P", "28", "All", "10", "", "", "-12", "KD", "", "", "Upper Body", "90%", ],
["6H", "20, 40", "All", "8,19", "", "", "-6", "KD/-3", "", "", "none", "100%", ],
["2D", "29", "Low", "11", "", "", "-19", "HKD", "", "", "none", "90%", ],
["5D", "45 [56]", "High", "20 [28]", "", "", "-15 [-10]", "0 [KD]", "9 [14.5]", "2", "none", "80% [100%]", ],
];
var jackoHeaderNormals = [
  DataColumn2(
    label: Text("input"),
    size: ColumnSize.M,
  ),
  DataColumn2(
    label: Text("damage"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("guard"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("startup"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("active"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("recovery"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onBlock"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onHit"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("riscGain"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("level"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("invuln"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("prorate"),
    size: ColumnSize.L,
  ),
];
var jackoSpecials = [
["236P", "Summon Servant", "", "-", "10", "", "Total 25", "", "", "", "", "none", "", ],
["236[P]", "Summon Servant", "", "-", "", "", "Total 14", "", "", "", "", "none", "", ],
["2P (near Servant)", "Pick Up Servant", "", "-", "", "", "Total 14", "", "", "", "", "none", "", ],
["6P/6K/6S/6H while holding Servant", "Throw Servant", "30", "All", "12", "", "Total 32", "", "", "", "", "none", "", ],
["D while holding Servant", "Release Servant", "", "-", "", "", "Total 11", "", "", "", "", "none", "", ],
["214P", "Recover Servant", "", "-", "", "", "Total 24", "", "", "", "", "none", "", ],
["214K", "Attack Command", "50", "All", "13", "", "Total 24", "+15", "", "", "", "none", "", ],
["214S", "Defend Command", "", "-", "4", "", "Total 24", "", "", "", "", "none", "", ],
["214H", "Countdown", "80", "All", "", "", "Total 24", "", "", "", "", "none", "", ],
["236K", "Servant Shoot", "31", "All", "15", "", "", "-12", "KD", "", "", "none", "", ],
];
var jackoHeaderSpecials = [
  DataColumn2(
    label: Text("input"),
    size: ColumnSize.M,
  ),
  DataColumn2(
    label: Text("name"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("damage"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("guard"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("startup"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("active"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("recovery"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onBlock"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onHit"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("riscGain"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("level"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("invuln"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("prorate"),
    size: ColumnSize.L,
  ),
];
var jackoSupers = [
["632146P", "Forever Elysion Driver", "179", "Throw", "10 + 1", "", "", "-", "HKD", "", "", "All 1-?f", "100%", ],
["236236S", "Cheer Servant On (S)", "", "-", "3", "", "12", "-", "-", "", "", "", "", ],
["236236H", "Cheer Servant On (H)", "", "-", "3", "", "12", "-", "-", "", "", "", "", ],
];
var jackoHeaderSupers = [
  DataColumn2(
    label: Text("input"),
    size: ColumnSize.M,
  ),
  DataColumn2(
    label: Text("name"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("damage"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("guard"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("startup"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("active"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("recovery"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onBlock"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onHit"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("riscGain"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("level"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("invuln"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("prorate"),
    size: ColumnSize.L,
  ),
];
var jackoData = <Category, List<List<String>>>{
  Category.normals: jackoNormals,
  Category.specials: jackoSpecials,
  Category.supers: jackoSupers
};var kyNormals = [
["5P", "20", "All", "3", "2", "10", "-2", "+1", "", "0", "", "80%", ],
["5K", "24", "All", "6", "5", "8", "-3", "0", "", "0", "", "80%", ],
["c.S", "38", "All", "7", "6", "13", "-2", "+1", "", "3", "", "100%", ],
["f.S", "30", "All", "9", "2", "20", "-8", "-5", "", "2", "", "90%", ],
["5H", "42", "All", "11", "7", "16", "-4", "-1", "", "4", "", "100%", ],
["2P", "18", "All", "5", "2", "10", "-2", "+1", "", "0", "", "80%", ],
["2K", "18", "Low", "5", "4", "8", "-2", "+1", "", "0", "", "70%", ],
["2S", "28", "All", "10", "4", "17", "-7", "-4", "", "2", "", "90%", ],
["2H", "36", "All", "12", "9", "24", "-14", "KD", "", "4", "", "100%", ],
["j.P", "16", "High", "5", "4", "8", "", "", "", "0", "", "80%", ],
["j.K", "16*2", "High", "6", "2(3)2", "8", "", "", "", "1", "", "80%", ],
["j.S", "32", "High", "9", "4", "18", "", "", "", "2", "", "80%", ],
["j.H", "22*2", "High", "9", "3*4", "17", "", "", "", "2", "", "80%", ],
["j.D", "44", "High", "8", "4", "22", "", "", "", "2", "", "80%", ],
["6P", "26", "All", "9", "5", "25", "-16", "-13", "", "3", "Head", "90%", ],
["6K", "35", "High", "20", "5", "9", "-2", "+1", "", "1", "", "80%", ],
["6H", "50", "All", "17", "6", "18", "-5", "-2", "", "4", "", "100%", ],
["j.2K", "14 x n", "High", "16", "", "", "", "", "", "1", "", "80%", ],
["2D", "30", "Low", "10", "2", "19", "-7", "HKD", "", "2", "", "90%", ],
["5D", "40 [50]", "High", "20 [28]", "5", "24", "-15 [-10]", "0 [KD]", "", "2 [4]", "", "80% [-]", ],
];
var kyHeaderNormals = [
  DataColumn2(
    label: Text("input"),
    size: ColumnSize.M,
  ),
  DataColumn2(
    label: Text("damage"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("guard"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("startup"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("active"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("recovery"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onBlock"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onHit"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("riscGain"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("level"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("invuln"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("prorate"),
    size: ColumnSize.L,
  ),
];
var kySpecials = [
["236P", "Alpha Blade (Horizontal)", "38", "All", "29", "3", "19", "-4", "KD", "", "1", "", "80%", ],
["j.236P", "Alpha Blade (Horizontal)", "38", "All", "29", "3", "", "", "KD", "", "1", "", "80%", ],
["236K", "Alpha Blade (Diagonal)", "36", "All", "24", "3", "17", "-2", "KD", "", "1", "", "80%", ],
["j.236K", "Alpha Blade (Diagonal)", "35", "All", "37", "3", "", "-7", "KD", "", "1", "", "80%", ],
["623S", "Beta Blade", "30, 26", "All", "7", "20", "23", "-27", "KD", "", "2", "1~8 Strike", "80%", ],
["j.623S", "Beta Blade", "30, 26", "All", "7", "20", "Until L+??", "", "KD", "", "2", "1~8 Strike", "80%", ],
["236H", "Gamma Blade", "30", "All", "25", "", "", "+6", "+9", "", "1", "", "80%", ],
["236S", "Resshou", "28", "All", "13", "5", "16", "-4", "-1", "", "3", "", "100%", ],
["236S 236S", "Rokusai", "35", "Low", "8", "2", "21", "-6", "-3", "", "3", "", "90%", ],
["236S 236K", "Senshuu", "40", "High", "25", "6", "27", "-16", "HKD", "", "3", "", "80%", ],
["63214S", "Genrouzan", "20,20,67", "Throw", "27", "11", "15", "N/A", "HKD", "", "", "", "50%", ],
["j.214P", "Shuriken", "10", "All", "22", "Until Hit", "Total&#160;??", "", "", "", "0", "", "80%", ],
];
var kyHeaderSpecials = [
  DataColumn2(
    label: Text("input"),
    size: ColumnSize.M,
  ),
  DataColumn2(
    label: Text("name"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("damage"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("guard"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("startup"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("active"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("recovery"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onBlock"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onHit"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("riscGain"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("level"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("invuln"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("prorate"),
    size: ColumnSize.L,
  ),
];
var kySupers = [
["236236K", "Banki Messai", "15*5, 9*3, 30", "All", "6+1", "", "", "-20", "HKD", "", "", "", "100%", ],
["632146H", "Zansei Rouga", "10*4, 135", "All", "20+1", "", "", "", "HKD", "", "", "", "100%", ],
["j.632146H", "Zansei Rouga", "10*4, 135", "All", "13+1", "", "", "", "HKD", "", "", "", "100%", ],
];
var kyHeaderSupers = [
  DataColumn2(
    label: Text("input"),
    size: ColumnSize.M,
  ),
  DataColumn2(
    label: Text("name"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("damage"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("guard"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("startup"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("active"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("recovery"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onBlock"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onHit"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("riscGain"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("level"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("invuln"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("prorate"),
    size: ColumnSize.L,
  ),
];
var kyData = <Category, List<List<String>>>{
  Category.normals: kyNormals,
  Category.specials: kySpecials,
  Category.supers: kySupers
};var leoNormals = [
["5P", "26", "All", "5", "5", "6", "-1", "+2", "2 (5)", "0", "", "75%", ],
["5K", "32", "All", "9", "4", "11", "-1", "+2", "11 (17)", "2", "", "85%", ],
["c.S", "40", "All", "7", "6", "13", "-2", "+1", "15 (23)", "3", "", "100%", ],
["f.S", "34", "All", "12", "6", "21", "-13", "-10", "11 (17)", "2", "", "90%", ],
["5H", "42", "All", "15", "5", "22", "-10", "-7", "15 (23)", "3", "", "100%", ],
["2P", "22", "All", "6", "4", "8", "-2", "+1", "3 (5)", "0", "", "75%", ],
["2K", "26", "Low", "7", "6", "11", "-5", "-2", "5", "1", "", "70%", ],
["2S", "26", "Low", "10", "3", "19", "-7", "-4", "8", "", "", "90%", ],
["2H", "44", "All", "12", "8", "30", "-20", "", "15 (23)", "", "", "100%", ],
["j.P", "24", "High", "5", "3", "9", "", "", "2 (5)", "", "", "80%", ],
["j.K", "30", "High", "10", "7", "25", "", "", "5 (11)", "", "", "80%", ],
["j.S", "24,19", "High", "7", "3(3)3", "17", "", "", "4 (8)", "", "", "80%, 100%", ],
["j.H", "42", "High", "11", "3", "19", "", "", "8 (17)", "", "", "80%", ],
["j.D", "44", "High", "22", "Until L", "15", "", "", "8 (17)", "", "", "100%", ],
["6P", "38", "All", "10", "5", "18", "-5", "", "15 (23)", "", "1-2 Upper Body, 3-14 Above Knees", "80%", ],
["6K", "30", "All", "14", "3", "18", "-4", "-1", "15 (23)", "3", "", "85%", ],
["6H", "50", "All", "27", "2", "31", "-15", "-12", "15 (23)", "", "", "100%", ],
["2D", "40", "Low", "12", "6", "16", "-5", "", "11 (23)", "", "", "90%", ],
["5D", "40 [50]", "High", "20 [28]", "3", "26", "-15 [-10]", "", "8 [14] (17 [29])", "", "", "80% [100%]", ],
["[s/h] h/s", "42", "All", "10", "3", "20", "-6", "", "15 (23)", "", "", "80%", ],
];
var leoHeaderNormals = [
  DataColumn2(
    label: Text("input"),
    size: ColumnSize.M,
  ),
  DataColumn2(
    label: Text("damage"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("guard"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("startup"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("active"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("recovery"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onBlock"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onHit"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("riscGain"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("level"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("invuln"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("prorate"),
    size: ColumnSize.L,
  ),
];
var leoSpecials = [
["[4]6S", "Graviert Wurde", "20*2", "All", "10", "31 or Until Hit*2", "Total 54F", "-16", "-13", "3 (5)", "", "", "80%", ],
["[4]6H", "Graviert Wurde", "16*4", "All", "35", "Until Hit*4", "", "+11", "+14", "3 (5)", "", "", "80%", ],
["[2]8S", "Eisen Sturm", "28,25", "All", "7", "3,12", "33", "-28", "", "", "", "1-9", "80%", ],
["[2]8H", "Eisen Sturm", "28,25,28", "All", "8", "3,12(10)5", "42", "-52", "", "", "", "1-10", "80%", ],
["236S", "Kaltes Gestöber Erst", "37", "All", "12", "3", "20", "-6", "", "", "", "", "100%", ],
["236H", "Kaltes Gestöber Zweit", "41", "All", "16~23", "3", "22", "-6 [+2]", "", "", "", "", "100%", ],
["214S", "Turbulenz", "55", "All", "21", "6", "21", "-8", "", "", "", "", "100%", ],
["bt.214K", "Gländzendes Dunkel", "115", "Ground Throw", "30", "3", "42", "", "", "", "", "", "50%", ],
["bt.214H", "Blitzschlag", "65", "Guard Break", "29", "3", "13", "+21", "", "", "", "", "100%", ],
];
var leoHeaderSpecials = [
  DataColumn2(
    label: Text("input"),
    size: ColumnSize.M,
  ),
  DataColumn2(
    label: Text("name"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("damage"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("guard"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("startup"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("active"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("recovery"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onBlock"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onHit"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("riscGain"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("level"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("invuln"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("prorate"),
    size: ColumnSize.L,
  ),
];
var leoSupers = [
["632146S", "Stahl Wirbel", "170", "All", "4+1", "", "Total 27F", "+14", "", "", "", "1-4", "65%", ],
["632146H", "Liedenschaft des Dirigenten", "20*4,50", "All", "10+1", "8(15)12(13)8(10)8(44)6", "43", "-33", "", "", "", "1-18", "90%", ],
];
var leoHeaderSupers = [
  DataColumn2(
    label: Text("input"),
    size: ColumnSize.M,
  ),
  DataColumn2(
    label: Text("name"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("damage"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("guard"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("startup"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("active"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("recovery"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onBlock"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onHit"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("riscGain"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("level"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("invuln"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("prorate"),
    size: ColumnSize.L,
  ),
];
var leoData = <Category, List<List<String>>>{
  Category.normals: leoNormals,
  Category.specials: leoSpecials,
  Category.supers: leoSupers
};var mayNormals = [
["5P", "28", "All", "5", "3", "8", "-1", "+2", "3 (5)", "0", "", "80%", ],
["5K", "30", "All", "9", "6", "11", "-5", "-2", "7 (11)", "1", "", "90%", ],
["c.S", "44", "All", "7", "6", "8", "+3", "+6", "15 (23)", "3", "", "100%", ],
["f.S", "38", "All", "12", "3", "19", "-8", "-5", "11 (17)", "2", "", "90%", ],
["5H", "65", "All", "13", "8", "15", "-4", "--1", "19 (29)", "4", "", "100%", ],
["2P", "24", "All", "5", "4", "8", "-2", "+1", "3 (5)", "0", "", "80%", ],
["2K", "28", "Low", "6", "4", "10", "-2", "+1", "5", "1", "", "70%", ],
["2S", "35", "All", "10", "3", "15", "-7", "-4", "11 (17)", "2", "", "90%", ],
["2H", "60", "All", "11", "13", "26", "-20", "KD", "19 (29)", "4", "", "100%", ],
["j.P", "22", "High", "5", "3", "12", "", "", "2 (5)", "0", "", "80%", ],
["j.K", "28", "High", "7", "3", "12", "", "", "5 (11)", "1", "", "80%", ],
["j.S", "34", "High", "12", "4", "15", "", "", "11 (17)", "2", "", "80%", ],
["j.H", "50", "High", "12", "10", "15", "", "", "11 (23)", "3", "", "80%", ],
["j.D", "60", "High", "10", "6", "21", "", "", "14 (29)", "4", "", "80%", ],
["j.2H", "40", "High", "13", "Until L", "", "", "", "11 (23)", "3", "", "80%", ],
["6P", "35", "All", "12", "6", "19", "-7", "KD", "15 (23)", "3", "1-3 upper body, 4-17 above knees", "90%", ],
["6K", "35", "High", "20", "5", "11", "-2", "+1", "8 (17)", "2", "", "80%", ],
["3K", "35", "Low", "11", "6", "21", "-13", "HKD", "8", "2", "", "90%", ],
["6H", "70 [90]", "All [All (Guard Crush)]", "16 [40]", "6 [6]", "24 [24]", "-8 [+8]", "-5[KD]", "19 [19] (29 [29])", "4", "", "", ],
["2D", "30", "Low", "10", "7", "17", "-7", "HKD", "11 (23)", "3", "", "90%", ],
["5D", "50 [62]", "High", "20 [28]", "3 [3]", "26 [26]", "-15 [-10]", "0[KD]", "8 [14] (17 [29])", "2 [4]", "", "80% [100%]", ],
];
var mayHeaderNormals = [
  DataColumn2(
    label: Text("input"),
    size: ColumnSize.M,
  ),
  DataColumn2(
    label: Text("damage"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("guard"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("startup"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("active"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("recovery"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onBlock"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onHit"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("riscGain"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("level"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("invuln"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("prorate"),
    size: ColumnSize.L,
  ),
];
var maySpecials = [
["[4]6S", "Mr. Dolphin Horizontal", "35", "All", "7", "15", "11", "-5", "-2", "11 (17)", "2", "", "", ],
["[4]6H", "Mr. Dolphin Horizontal", "45", "All", "25", "15", "11", "+5", "+8", "15 (23)", "4", "", "", ],
["[2]8S", "Mr. Dolphin Vertical", "40", "All/High", "6", "19", "7", "-3", "", "11 (17)", "2", "", "", ],
["[2]8H", "Mr. Dolphin Vertical", "45", "All/High", "11", "27", "8", "+1", "", "15 (23)", "3", "", "", ],
["623K", "Overhead Kiss", "30, 40", "Throw", "6", "", "Total 45", "N/A", "HKD", "", "", "1~6F Throw", "50%", ],
["214P", "Arisugawa Sparkle", "50", "All", "48", "6", "Total 45", "+29", "+32", "3 (5)", "2", "", "80%", ],
["214K", "Arisugawa Sparkle", "50", "All", "48", "10", "Total 45", "+29", "+32", "3 (5)", "2", "", "80%", ],
];
var mayHeaderSpecials = [
  DataColumn2(
    label: Text("input"),
    size: ColumnSize.M,
  ),
  DataColumn2(
    label: Text("name"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("damage"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("guard"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("startup"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("active"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("recovery"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onBlock"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onHit"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("riscGain"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("level"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("invuln"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("prorate"),
    size: ColumnSize.L,
  ),
];
var maySupers = [
["236236S", "Great Yamada Attack", "190", "All", "10+", "", "88", "-54", "HKD", "3 (5)", "4", "", "", ],
["632146H", "The Wonderful and Dynamic Goshogawara", "80, 100", "All", "6+4", "", "", "-21", "HKD", "11 (16)", "", "", "", ],
["j.632146H", "The Wonderful and Dynamic Goshogawara", "80, 100", "All", "6+4", "", "", "-21", "HKD", "11 (16)", "", "", "", ],
];
var mayHeaderSupers = [
  DataColumn2(
    label: Text("input"),
    size: ColumnSize.M,
  ),
  DataColumn2(
    label: Text("name"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("damage"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("guard"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("startup"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("active"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("recovery"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onBlock"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onHit"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("riscGain"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("level"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("invuln"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("prorate"),
    size: ColumnSize.L,
  ),
];
var mayData = <Category, List<List<String>>>{
  Category.normals: mayNormals,
  Category.specials: maySpecials,
  Category.supers: maySupers
};var milliaNormals = [
["5P", "20", "All", "7", "5", "7", "-2", "+1", "", "0", "None", "", ],
["5K", "24", "All", "7", "3", "12", "-3", "0", "", "1", "None", "80%", ],
["c.S", "15*2", "All", "7", "3,3", "16", "-2", "0", "", "3", "None", "100%", ],
["f.S", "30", "All", "10", "2", "19", "-7", "-4", "", "2", "27-30F Head", "90%", ],
["5H", "42", "All", "12", "4", "23", "-8", "-5", "", "4", "None", "100%", ],
["2P", "18", "All", "6", "2", "10", "-2", "+1", "", "0", "None", "80%", ],
["2K", "18", "Low", "6", "3", "12", "-3", "0", "", "1", "None", "70%", ],
["2S", "28", "Low", "11", "2", "18", "-6", "-3", "", "2", "None", "90%", ],
["2H", "45", "All", "14", "7", "17", "-7", "KD", "", "3", "None", "100%", ],
["j.P", "16", "High", "5", "4", "12", "-", "-", "", "0", "None", "80%", ],
["j.K", "20", "High", "6", "4", "12", "-", "-", "", "1", "None", "80%", ],
["j.S", "32", "High", "7", "4", "14", "-", "-", "", "2", "None", "80%", ],
["j.H", "35", "High", "8", "10", "25", "-", "-", "", "2", "None", "80%", ],
["j.D", "35", "High", "9", "7", "27", "-", "-", "", "2", "None", "80%", ],
["6P", "26", "All", "9", "9", "16", "-11", "-8", "", "2", "1-2F Upper Body, 3-11F Above Knee", "Initial 90%", ],
["6K", "35", "High", "28", "2", "11", "+1", "+4", "", "2", "13-29F Below Knee", "Initial 80%", ],
["6H", "20,40", "All", "17", "5(16)4", "23", "-8", "-5", "", "4", "9-21F Airborne", "100%", ],
["2D", "30", "Low", "12", "3", "22", "-11", "HKD", "", "2", "None", "Forced 90%", ],
["5D", "40 [50]", "High", "20 [28]", "3", "26", "-15 [-10]", "0[KD]", "", "2 [4]", "None", "Initial 80% [100%]", ],
];
var milliaHeaderNormals = [
  DataColumn2(
    label: Text("input"),
    size: ColumnSize.M,
  ),
  DataColumn2(
    label: Text("damage"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("guard"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("startup"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("active"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("recovery"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onBlock"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onHit"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("riscGain"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("level"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("invuln"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("prorate"),
    size: ColumnSize.L,
  ),
];
var milliaSpecials = [
["236S", "Tandem Top", "35", "All", "15", "14", "Total 48", "-14", "KD", "", "2", "9-41F Airborne, 42-45F Below Knee", "80%", ],
["236H", "Tandem Top", "32*2", "All", "73", "34", "Total 55", "-", "KD", "", "2", "18F onwards Airborne", "80%", ],
["214S", "Lust Shaker", "7*3~9", "All", "17", "1[(3)1]*2~8", "16", "-5, -7, -9", "-2, -4, KD", "", "1", "None", "100%", ],
["214P", "Iron Savior", "43", "Low", "20", "till corner", "17 + 10L", "-12", "HKD", "", "3", "10F onwards Airborne", "90%", ],
["j.236P", "Bad Moon", "5*N,31", "High", "11", "Until Ground", "20 + 12L", "-21", "KD", "", "2", "None", "80%", ],
["j.236K", "Turbo Fall", "-", "-", "14", "-", "12L", "-", "-", "", "-", "None", "", ],
["214K", "Mirazh", "-", "-", "-", "-", "Total 28", "-", "-", "", "-", "1-4F Upper Body, 5-25F Above Knee", "", ],
["j.236H", "Kapel", "30", "All", "13", "", "Total 30", "-4 at lowest height", "KD", "", "1", "1-12F Lower Body", "80%", ],
];
var milliaHeaderSpecials = [
  DataColumn2(
    label: Text("input"),
    size: ColumnSize.M,
  ),
  DataColumn2(
    label: Text("name"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("damage"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("guard"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("startup"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("active"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("recovery"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onBlock"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onHit"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("riscGain"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("level"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("invuln"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("prorate"),
    size: ColumnSize.L,
  ),
];
var milliaSupers = [
["236236S", "Septem Voices", "20*2,60", "All", "4+5", "till corner", "Total 43", "+8", "HKD", "", "2,2,4", "9-26F Airborne", "100%", ],
["632146H", "Winger", "20*5,60", "Mid*5, High", "6+1", "10(9)15", "30", "-22", "HKD", "", "4", "1-8F Full, 7-40F Airborne", "100%*5, F95%", ],
];
var milliaHeaderSupers = [
  DataColumn2(
    label: Text("input"),
    size: ColumnSize.M,
  ),
  DataColumn2(
    label: Text("name"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("damage"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("guard"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("startup"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("active"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("recovery"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onBlock"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onHit"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("riscGain"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("level"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("invuln"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("prorate"),
    size: ColumnSize.L,
  ),
];
var milliaData = <Category, List<List<String>>>{
  Category.normals: milliaNormals,
  Category.specials: milliaSpecials,
  Category.supers: milliaSupers
};var nagoriyukiNormals = [
["5P", "26", "Mid", "5", "3", "9", "0", "+3", "10", "1", "", "80%", ],
["5K", "34", "Mid", "7", "2", "12", "0", "+3", "15", "2", "", "90%", ],
["c.S", "40", "Mid", "7", "6", "10", "+3", "KD", "25", "4", "", "", ],
["f.S", "25", "Mid", "16", "3", "28", "-17", "-14", "15", "2", "", "90%", ],
["f.SS", "25", "Mid", "13", "3", "19", "-8", "-5", "15", "2", "", "", ],
["f.SSS", "25,[80]", "Mid", "14", "6", "38", "-25", "HKD", "25", "4", "", "", ],
["5H Level 1", "60", "Mid", "20", "6", "27", "-14", "KD", "25", "4", "", "", ],
["5H Level 2", "65", "Mid", "18", "6", "27", "-14", "KD", "25", "4", "", "", ],
["5H Level 3", "70", "Mid", "16", "6", "27", "-14", "KD", "25", "4", "", "", ],
["5H Level BR", "91", "Mid", "16", "6", "27", "-14", "KD", "25", "4", "", "", ],
["2P", "22", "Mid", "6", "3", "11", "-2", "+1", "10", "1", "", "80%", ],
["2K", "26", "Low", "7", "5", "8", "-1", "+2", "7.5", "1", "", "70%", ],
["2S", "32", "Low", "12", "4", "15", "-5", "-2", "11.25", "2", "", "90%", ],
["2H Level 1", "50", "Mid", "19", "7", "29", "-17", "KD", "25", "4", "", "", ],
["2H Level 2", "55", "Mid", "17", "7", "29", "-17", "KD", "25", "4", "", "", ],
["2H Level 3", "60", "Mid", "15", "7", "29", "-17", "KD", "25", "4", "", "", ],
["2H Level BR", "78", "Mid", "15", "7", "29", "-17", "KD", "25", "4", "", "", ],
["j.P", "20", "High", "7", "3", "12", "N/A", "N/A", "5", "0", "", "80%", ],
["j.K", "26", "High", "7", "3", "19", "N/A", "N/A", "10", "1", "", "80%", ],
["j.S", "35", "High", "13", "3", "20", "N/A", "N/A", "15", "2", "", "80%", ],
["j.H Level 1", "41", "High", "16", "4", "23", "N/A", "N/A", "20", "3", "", "80%", ],
["j.H Level 2", "43", "High", "15", "4", "23", "N/A", "N/A", "20", "3", "", "80%", ],
["j.H Level 3", "45", "High", "14", "4", "23", "N/A", "N/A", "20", "3", "", "80%", ],
["j.H Level BR", "58", "High", "14", "4", "23", "N/A", "N/A", "20", "3", "", "80%", ],
["j.D", "55", "High", "15", "3", "20", "N/A", "N/A", "20", "3", "", "80%", ],
["6P", "34", "Mid", "12", "5", "15", "-6", "-3", "15", "2", "1~3F Upper body; 4~17F Above Knee", "90%", ],
["6K", "35", "Low", "15", "3", "15", "-4", "-1", "11.25", "2", "", "90%", ],
["6H Level 1", "70", "Mid", "17", "6", "30", "-17", "KD", "25", "4", "", "", ],
["6H Level 2", "80", "Mid", "16", "6", "30", "-17", "KD", "25", "4", "", "", ],
["6H Level 3", "90", "Mid", "15", "6", "30", "-17", "KD", "25", "4", "", "", ],
["6H Level BR", "117", "Mid", "15", "6", "30", "-17", "KD", "25", "4", "", "", ],
["2D", "30", "Low", "12", "3", "18", "-7", "HKD", "11.25", "2", "", "90%", ],
["5D", "50 [62]", "High", "20 [28]", "3", "26", "-15 [-10]", "0 [KD]", "11.25 [18.75]", "2 [4]", "", "80%[N/A]", ],
];
var nagoriyukiHeaderNormals = [
  DataColumn2(
    label: Text("input"),
    size: ColumnSize.M,
  ),
  DataColumn2(
    label: Text("damage"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("guard"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("startup"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("active"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("recovery"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onBlock"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onHit"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("riscGain"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("level"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("invuln"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("prorate"),
    size: ColumnSize.L,
  ),
];
var nagoriyukiSpecials = [
["236S", "Zarameyuki", "45", "Mid", "23", "26", "Total 44", "+5", "+8", "5", "2", "", "80%", ],
["236K", "Fukyo", "N/A", "N/A", "1", "N/A", "Total 25", "N/A", "N/A", "", "N/A", "1~25F Above Chest", "", ],
["214K", "Fukyo", "N/A", "N/A", "1", "N/A", "Total 16", "N/A", "N/A", "", "N/A", "1~16F Above Chest", "", ],
["214H", "Kamuriyuki", "50", "Mid", "14", "5", "14", "0", "HKD", "25", "4", "", "", ],
["623H", "Shizuriyuki", "45,55", "Mid", "13", "3(8)6", "29(45 on whiff)", "-16", "HKD", "10,12", "3,4", "1~15F Upper Body", "", ],
["623P", "Bloodsucking Universe", "80,90,100", "Ground Throw", "7", "2", "48", "NA", "HKD", "", "N/A", "1~8F Throw", "50%", ],
];
var nagoriyukiHeaderSpecials = [
  DataColumn2(
    label: Text("input"),
    size: ColumnSize.M,
  ),
  DataColumn2(
    label: Text("name"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("damage"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("guard"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("startup"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("active"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("recovery"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onBlock"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onHit"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("riscGain"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("level"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("invuln"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("prorate"),
    size: ColumnSize.L,
  ),
];
var nagoriyukiSupers = [
["632146S", "Wasureyuki", "70+3*17+60=Total 181", "Mid", "7+173+2", "2", "47", "-30", "HKD", "20", "3", "1~10F Full", "", ],
["632146H", "Zansetsu", "200", "Mid", "11+58+10", "6", "80", "-66", "HKD", "25", "4", "1~26F Full", "", ],
];
var nagoriyukiHeaderSupers = [
  DataColumn2(
    label: Text("input"),
    size: ColumnSize.M,
  ),
  DataColumn2(
    label: Text("name"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("damage"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("guard"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("startup"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("active"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("recovery"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onBlock"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onHit"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("riscGain"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("level"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("invuln"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("prorate"),
    size: ColumnSize.L,
  ),
];
var nagoriyukiData = <Category, List<List<String>>>{
  Category.normals: nagoriyukiNormals,
  Category.specials: nagoriyukiSpecials,
  Category.supers: nagoriyukiSupers
};var potemkinNormals = [
["5P", "30", "All", "5", "5", "6", "+1", "+4", "", "1", "", "80%", ],
["5K", "36", "Low", "10", "9", "9", "-4", "-1", "", "2", "", "70%", ],
["c.S", "45", "All", "8", "4", "11", "+4", "+7", "", "4", "", "100%", ],
["f.S", "40", "All", "12", "7", "18", "-8", "-5", "", "3", "", "90%", ],
["5H", "60", "All", "16", "5", "25", "-11", "-8", "", "4", "", "100%", ],
["5D", "50 [62]", "High", "20~27 [28]", "8", "21", "-15 [-10]", "0 [SKD +38]", "", "2 [4]", "", "80% [100%]", ],
["2P", "26", "All", "8", "4", "9", "-1", "+2", "", "1", "", "80%", ],
["2K", "30", "Low", "10", "4", "14", "-4", "-1", "", "2", "", "70%", ],
["2S", "45", "All", "14", "3", "18", "-4", "-1", "", "3", "", "90%", ],
["2H", "55", "All", "13", "5", "35", "-21", "SKD (+27)", "", "4", "", "100%", ],
["2D", "40", "Low", "13", "7", "21", "-11", "KD", "", "3", "", "90%", ],
["6H", "90", "All", "23", "5", "29", "-15", "SKD (+25)", "", "4", "", "100%", ],
["6K", "45", "All", "22", "5", "18", "-6", "-3", "", "3", "", "100%", ],
["j.P", "30", "High", "7", "6", "6", "", "", "", "0", "", "80%", ],
["j.K", "36", "High", "10", "6", "15", "", "", "", "1", "", "80%", ],
["j.S", "45", "High", "13", "5", "23", "", "", "", "3", "", "80%", ],
["j.H", "55", "High", "12", "4", "16", "", "", "", "4", "", "80%", ],
["j.D", "50", "All", "13", "Until Landing", "9 After landing", "", "", "", "3", "", "80%", ],
["6P", "42", "All", "11", "7", "25", "-15", "SKD (+29)", "", "3", "", "90%", ],
];
var potemkinHeaderNormals = [
  DataColumn2(
    label: Text("input"),
    size: ColumnSize.M,
  ),
  DataColumn2(
    label: Text("damage"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("guard"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("startup"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("active"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("recovery"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onBlock"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onHit"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("riscGain"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("level"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("invuln"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("prorate"),
    size: ColumnSize.L,
  ),
];
var potemkinSpecials = [
["[4]6H", "Hammer Fall", "58", "All", "18~47", "2f", "26", "-9", "SKD (+22)", "", "", "", "80%", ],
["[4]6H P", "Hammer Fall Break", "N/A", "N/A", "", "", "27", "", "", "", "", "", "", ],
["632146P", "Potemkin Buster", "175", "Ground Throw", "5", "4", "37", "", "", "", "", "", "50%", ],
["623H", "Heat Knuckle", "0,8*7,60", "Air Guard Crush", "12", "4", "18", "+10~+1", "KD/Wall Break", "", "", "", "50%", ],
["236P", "Mega Fist", "60", "High", "25", "7", "16", "-6", "-2", "", "3", "", "80%", ],
["214P", "Mega Fist", "60 (75)", "High", "25", "7", "6", "+4 (-2)", "+8", "", "3", "", "80%", ],
["236S", "Slide Head", "0", "Low", "29", "2", "28", "0", "KD", "", "4", "", "80%", ],
["63214S", "F.D.B.", "55 [75]", "All", "21~28 [28~38]", "3", "20", "-6", "KD", "", "3", "", "100%", ],
["Reflect Projectile", "", "50", "All", "1", "", "", "+11", "SKD (+46)", "", "3", "", "80%", ],
["214H", "Garuda Impact", "73", "All (Guard Crush)", "28", "11", "24", "+19", "+17~35", "", "", "", "100%", ],
];
var potemkinHeaderSpecials = [
  DataColumn2(
    label: Text("input"),
    size: ColumnSize.M,
  ),
  DataColumn2(
    label: Text("name"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("damage"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("guard"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("startup"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("active"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("recovery"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onBlock"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onHit"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("riscGain"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("level"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("invuln"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("prorate"),
    size: ColumnSize.L,
  ),
];
var potemkinSupers = [
["236236S", "Heavenly Potemkin Buster", "220", "Air Unblockable", "12+0", "15", "16", "N/A", "KD", "", "", "", "100%", ],
["632146H", "Giganter Kai", "120", "All", "10+9", "3, 301", "2, 28", "+1", "KD", "", "", "", "100%", ],
];
var potemkinHeaderSupers = [
  DataColumn2(
    label: Text("input"),
    size: ColumnSize.M,
  ),
  DataColumn2(
    label: Text("name"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("damage"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("guard"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("startup"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("active"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("recovery"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onBlock"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onHit"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("riscGain"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("level"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("invuln"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("prorate"),
    size: ColumnSize.L,
  ),
];
var potemkinData = <Category, List<List<String>>>{
  Category.normals: potemkinNormals,
  Category.specials: potemkinSpecials,
  Category.supers: potemkinSupers
};var ramlethalNormals = [
["5P", "22", "All", "5", "4", "8", "-2", "1", "5", "0", "", "80%", ],
["5K", "30", "All", "7", "3", "11", "-2", "1", "10", "1", "", "90%", ],
["c.S", "40", "All", "7", "6", "13", "-2", "1", "20", "3", "", "100%", ],
["f.S", "32 [25]", "All", "11", "6", "21", "-10 [-13]", "-7 [-10]", "20 [15]", "3 [2]", "", "90%", ],
["5H", "42 [33]", "All", "12", "3", "28", "-12 [-13]", "-9 [-11]", "25 [20]", "4 [3]", "", "100%", ],
["2P", "22", "All", "6", "4", "9", "-3", "0", "5", "0", "", "80%", ],
["2K", "26", "Low", "6", "5", "9", "-2", "1", "10", "1", "", "70%", ],
["2S", "38 [30]", "Low", "12 [12]", "4 [4]", "20 [20]", "-7 [-10]", "-4 [-7]", "20 [15]", "3 [2]", "", "90%", ],
["2H", "46 [36]", "All", "14", "", "", "-15 [-17]", "KD", "25 [20]", "4 [3]", "", "100%", ],
["j.P", "20", "High", "5", "4", "8", "", "", "5", "0", "", "80%", ],
["j.K", "22", "High", "7", "4", "13", "", "", "10", "1", "", "80%", ],
["j.S", "30 [24]", "High", "12", "4", "24", "", "", "15 [10]", "2 [1]", "", "80%", ],
["j.H", "40 [32]", "High", "16", "6", "31", "", "", "15 [10]", "2 [1]", "", "80%", ],
["j.D", "16x3", "High", "10", "", "", "", "", "3,3,3", "1", "", "80%", ],
["6P", "30", "All", "9", "5", "18", "-9", "-6", "15", "1", "", "80%", ],
["6H", "50 [40]", "All", "18 [18]", "2 [2]", "33 [33]", "-16 [-18]", "KD [-15]", "25 [20]", "4 [3]", "", "100%", ],
["2D", "36", "Low", "10", "6", "19", "-8", "KD", "20", "3", "", "90%", ],
["5D", "45 [56]", "High", "20 [28]", "2 [2]", "27 [27]", "-15 [-10]", "0 [KD]", "15 [25]", "2 [4]", "", "80% [100%]", ],
];
var ramlethalHeaderNormals = [
  DataColumn2(
    label: Text("input"),
    size: ColumnSize.M,
  ),
  DataColumn2(
    label: Text("damage"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("guard"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("startup"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("active"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("recovery"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onBlock"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onHit"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("riscGain"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("level"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("invuln"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("prorate"),
    size: ColumnSize.L,
  ),
];
var ramlethalSpecials = [
["236S", "Bajoneto", "30,35", "All", "20", "", "Total 37", "+9", "22~40", "5", "2", "", "80%", ],
["236H", "Bajoneto", "30,35", "All", "20", "", "Total 43", "+3", "KD", "5", "2", "", "80%", ],
["623P", "Dauro", "35", "All", "11", "3", "27", "-10", "+5/-1", "25", "4", "", "100%", ],
["214K", "Sildo Detruo", "40", "High", "30", "2", "18", "-3", "KD", "20", "3", "", "80%", ],
["j.214K", "Sildo Detruo", "40", "High", "30", "Until L", "", "-7~-4", "KD", "20", "3", "", "80%", ],
["214H", "Sabrubato", "100 [75] {50}", "All (Guard Crush)", "19", "4", "42", "-27 [-27] {-32}", "KD", "25 [25] [15]", "4 [4] {2}", "", "100%", ],
["214P", "Erarlumo", "30", "All", "20", "7", "21", "-9", "+1", "25", "4", "", "100%", ],
["214P 214P", "Erarlumo", "35 [50]", "All", "12", "4", "41", "-13 [-2]", "+13 [+21]", "15 [20]", "2 [3]", "", "100%", ],
["214P 214P 214P", "Erarlumo", "40 [70]", "All", "22", "6", "32", "-19", "KD", "25", "4", "", "100%", ],
["j.214S", "Agressa Ordono", "30,30 [24,30] [30,24] {24,24}", "All", "12", "4(10)4", "24", "", "KD", "10,20 [7,20] [10,15] {7,15}", "3", "", "100%", ],
];
var ramlethalHeaderSpecials = [
  DataColumn2(
    label: Text("input"),
    size: ColumnSize.M,
  ),
  DataColumn2(
    label: Text("name"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("damage"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("guard"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("startup"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("active"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("recovery"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onBlock"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onHit"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("riscGain"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("level"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("invuln"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("prorate"),
    size: ColumnSize.L,
  ),
];
var ramlethalSupers = [
["632146H", "Calvados", "4*29,40", "All", "11+13", "", "", "-70", "KD", "5x29", "1", "", "100%", ],
["236236S", "Mortobato", "160 [130] {100}", "All", "7+2", "", "", "-30 [-30] {-35}", "KD", "25 {15}", "4 [4] {2}", "", "100%", ],
];
var ramlethalHeaderSupers = [
  DataColumn2(
    label: Text("input"),
    size: ColumnSize.M,
  ),
  DataColumn2(
    label: Text("name"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("damage"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("guard"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("startup"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("active"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("recovery"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onBlock"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onHit"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("riscGain"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("level"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("invuln"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("prorate"),
    size: ColumnSize.L,
  ),
];
var ramlethalData = <Category, List<List<String>>>{
  Category.normals: ramlethalNormals,
  Category.specials: ramlethalSpecials,
  Category.supers: ramlethalSupers
};var solNormals = [
["5P", "28", "All", "4", "5", "9", "-2", "+1", "10", "1", "Small", "", "80%", ],
["5K", "14,28", "All", "3", "1,3", "25", "-14", "-11", "2,7", "0,2", "Small", "", "90%", ],
["c.S", "44", "All", "7", "6", "10", "+3", "+13(+3)", "25", "4", "Mid", "", "100%", ],
["f.S", "36", "All", "10", "2", "13", "+2", "+5", "20", "3", "Mid", "", "90%", ],
["5H", "52", "All", "11", "4", "25", "-5", "-2", "25", "4", "Large", "", "100%", ],
["2P", "22", "All", "5", "4", "8", "-2", "+1", "5", "0", "Small", "", "80%", ],
["2K", "28", "Low", "6", "3", "11", "-2", "+1", "10", "1", "Small", "", "70%", ],
["2S", "34", "All", "10", "6", "15", "-7", "-4", "15", "2", "Mid", "", "90%", ],
["2H", "46", "All", "11", "5", "31", "-17", "-2(-8)", "25", "4", "Large", "", "100%", ],
["j.P", "24", "High", "5", "3", "8", "", "", "5", "0", "Small", "", "80%", ],
["j.K", "30", "High", "6", "3", "20", "", "", "10", "1", "Small", "", "80%", ],
["j.S", "36", "High", "10", "3", "23", "", "", "15", "2", "Small", "", "80%", ],
["j.H", "24x2", "High", "11", "4,8", "0", "", "", "7x2", "2", "Small", "", "80%", ],
["j.D", "45", "High", "9", "3", "17", "", "KD", "20", "3", "Mid", "", "80%", ],
["6P", "36", "All", "9", "5", "20", "-11", "KD(+18)", "15", "2", "Mid", "1~2F Upper Body, 3~13F Above Knees", "90%", ],
["6S", "55", "All", "15", "6", "20", "-7", "-4", "25", "4", "Mid", "", "90%", ],
["6H", "60", "All", "9", "3", "38", "-22", "HKD(+14)", "25", "4", "Large", "", "100%", ],
["2D", "36", "Low", "10", "3", "18", "-4", "HKD(+49)", "20", "3", "Large", "5~24F Low Profile", "90%", ],
["5D", "50[62]", "High", "20~28[28]", "3", "27", "-15[-10]", "±0(-10)[KD(+36)]", "15[25]", "2[4]", "Mid", "", "80%[100%]", ],
];
var solHeaderNormals = [
  DataColumn2(
    label: Text("input"),
    size: ColumnSize.M,
  ),
  DataColumn2(
    label: Text("damage"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("guard"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("startup"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("active"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("recovery"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onBlock"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onHit"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("riscGain"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("level"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("counter"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("invuln"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("prorate"),
    size: ColumnSize.L,
  ),
];
var solSpecials = [
["236P", "Gun Flame", "40→35→30→30", "All", "20", "10,10,10,10", "Total 54", "-8", "KD(+39)", "5", "2", "Small", "", "80%", ],
["214P", "Gun Flame (Feint)", "", "", "", "", "Total 30", "", "", "", "", "", "", "", ],
["623S", "Volcanic Viper", "40", "All", "7", "3(3)8", "18+10 after landing", "-28", "KD(+17)", "15", "2", "Mid", "1~9F Strike", "80%", ],
["623H", "Volcanic Viper", "35,40[35,100]", "All", "13", "2(3)11", "19+10 after landing", "-26", "KD(+18)[HKD(+54)]", "7x2", "2", "Large,Small", "1~14F Strike", "80%", ],
["j.623S", "Volcanic Viper", "40", "All", "7", "2(3)4", "Until landing+10", "", "KD", "15", "2", "Mid", "1~8F Strike", "80%", ],
["j.623H", "Volcanic Viper", "35,40[35,100]", "All", "13", "2(3)11", "Until landing+10", "", "KD[HKD]", "7x2", "2", "Large,Small", "1~14F Strike", "80%", ],
["236K", "Bandit Revolver", "20,25", "All", "16", "6", "23+9 after landing", "-7", "KD(+28)", "10", "3", "Small", "", "100%", ],
["j.236K", "Bandit Revolver", "20,25", "All", "10", "6", "Until landing+9", "", "KD", "10", "3", "Small", "", "100%", ],
["214K", "Bandit Bringer", "50", "High", "30", "7", "12 after landing", "-2", "HKD(+45)", "20", "3", "Small", "", "80%", ],
["j.214K", "Bandit Bringer", "40", "High", "25~33", "Until landing", "Until landing+18", "", "HKD", "20", "3", "Small", "", "80%", ],
["623K", "Wild Throw", "120", "Ground Throw: 120000", "6", "2", "Whiff: 41", "", "HKD(+15)", "", "", "", "1~7F Throw", "Forced 50%", ],
["214S", "Night Raid Vortex", "45[55]", "All", "15~31[32]", "2[8]", "32[26]", "-17", "HKD(+66)[HKD(+64)]", "20", "3", "Large", "7F til 1F before active Low Profile", "100%", ],
["41236H", "Fafnir", "65", "All (Guard Crush)", "24", "3", "16", "+11", "HKD(+76)", "25", "4", "Mid", "", "100%", ],
];
var solHeaderSpecials = [
  DataColumn2(
    label: Text("input"),
    size: ColumnSize.M,
  ),
  DataColumn2(
    label: Text("name"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("damage"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("guard"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("startup"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("active"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("recovery"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onBlock"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onHit"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("riscGain"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("level"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("counter"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("invuln"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("prorate"),
    size: ColumnSize.L,
  ),
];
var solSupers = [
["632146H", "Tyrant Rave", "70,100[70,130]", "All", "5+2", "3(20)20", "31", "-34", "HKD(+30)[HKD(+59)]", "12,10", "4,3", "Mid,Small", "1~8F Full", "100%", ],
["214214H", "Heavy Mob Cemetery", "40,161", "Ground Throw: 150000", "13+7", "49", "Total 84", "", "HKD(+27)", "", "", "", "14F onwards Guardpoint", "100%", ],
];
var solHeaderSupers = [
  DataColumn2(
    label: Text("input"),
    size: ColumnSize.M,
  ),
  DataColumn2(
    label: Text("name"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("damage"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("guard"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("startup"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("active"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("recovery"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onBlock"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onHit"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("riscGain"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("level"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("counter"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("invuln"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("prorate"),
    size: ColumnSize.L,
  ),
];
var solData = <Category, List<List<String>>>{
  Category.normals: solNormals,
  Category.specials: solSpecials,
  Category.supers: solSupers
};var zatoNormals = [
["5P", "18", "All", "6", "4", "8", "-2", "+1", "", "0", "", "80%", ],
["5K", "24", "Low", "8", "4", "10", "-2", "+1", "", "1", "", "70%", ],
["c.S", "30", "All", "9", "6", "13", "-2", "+1", "", "3", "", "100%", ],
["f.S", "20*2", "All", "10", "2x3", "23", "-12", "-9", "", "2", "", "90%", ],
["5H", "40", "All", "13", "9", "19", "-9", "-6", "", "4", "", "100%", ],
["2P", "18", "All", "6", "4", "9", "-3", "0", "", "0", "", "80%", ],
["2K", "26", "Low", "7", "2", "13", "-3", "0", "", "1", "", "70%", ],
["2S", "35", "All", "11", "4", "20", "-10", "-7", "", "2", "", "90%", ],
["2H", "48", "All", "13", "7", "26", "-13", "KD", "", "4", "", "100%", ],
["j.P", "13*3", "High", "8", "2(3)2(3)2", "15", "", "", "", "0", "", "80%", ],
["j.K", "20", "High", "7", "4", "11", "", "", "", "1", "", "80%", ],
["j.S", "26", "High", "9", "4", "14", "", "", "", "2", "", "80%", ],
["j.H", "38", "High", "12", "14", "13", "", "", "", "3", "", "80%", ],
["j.D", "40", "High", "11", "4", "22", "", "", "", "4", "", "80%", ],
["6P", "30", "All", "12", "8", "12", "-6", "KD", "", "2", "1 ~ 4 Upper Body, 5 ~ 17 Above Knees", "90%", ],
["6K", "30", "High", "23", "4", "17", "-2", "+1", "", "2", "", "80%", ],
["6H", "65", "All", "30", "4", "11", "-4", "+1", "", "3", "", "100%", ],
["5D", "40 [50]", "High", "20 [28]", "3", "26", "-15 [-10]", "0 [KD]", "", "2 [4]", "", "80% [100%]", ],
["2D", "27", "Low", "10", "6", "17", "-9", "HKD", "", "2", "", "90%", ],
];
var zatoHeaderNormals = [
  DataColumn2(
    label: Text("input"),
    size: ColumnSize.M,
  ),
  DataColumn2(
    label: Text("damage"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("guard"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("startup"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("active"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("recovery"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onBlock"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onHit"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("riscGain"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("level"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("invuln"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("prorate"),
    size: ColumnSize.L,
  ),
];
var zatoSpecials = [
["22H", "Invite Hell", "30", "All", "18", "32", "51 Total", "-7", "KD", "", "2", "", "80%", ],
["]P[", "Pierce", "20*2", "All", "13", "3(17)2", "24", "", "KD", "", "2", "", "80%", ],
["236P", "Pierce", "20*2", "All", "21", "3(17)2", "24 [36 Total]", "+30", "KD", "", "2", "", "80%", ],
["]K[", "That's a lot", "22*4", "All", "19", "", "", "", "KD", "", "2", "", "80%", ],
["236K", "That's a lot", "22*4", "All", "27", "", "", "+55", "KD", "", "2", "", "80%", ],
["]S[", "Leap", "20, 60", "All", "13", "2x13", "34", "", "KD", "", "3", "", "80%", ],
["236S", "Leap", "20, 60", "All", "21", "2x13", "34 [36 Total]", "+46", "KD", "", "3", "", "80%", ],
["]H[", "Oppose", "30*3", "All", "66", "3x6", "(Summon Vanishes)", "", "KD", "", "4", "8~59 Guardpoint", "80%", ],
["236H", "Oppose", "30*3", "All", "74", "3x6", "(Summon Vanishes) [36 Total]", "", "KD", "", "4", "16~67 Guardpoint", "80%", ],
["623S", "Damned Fang", "4*13, 50", "Throw(120000)", "6", "1", "39", "", "HKD", "", "", "", "50%", ],
["214[K]", "Break The Law", "", "", "28 Total (Max 95)", "", "", "", "", "", "", "13~[71] Full, 14~21~[77] Strike", "", ],
["214S", "Drunkard Shade", "31", "All", "9", "10", "12", "-8", "-5", "", "2", "3~18 Reflect", "100%", ],
["214S", "Eddie Dash", "", "", "30 Total", "", "", "", "", "", "", "", "", ],
["214H", "Summon Eddie", "", "", "36 total", "", "", "", "", "", "", "", "", ],
["214H", "Unsummon Eddie", "", "", "32 total", "", "", "", "", "", "", "", "", ],
];
var zatoHeaderSpecials = [
  DataColumn2(
    label: Text("input"),
    size: ColumnSize.M,
  ),
  DataColumn2(
    label: Text("name"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("damage"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("guard"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("startup"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("active"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("recovery"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onBlock"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onHit"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("riscGain"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("level"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("invuln"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("prorate"),
    size: ColumnSize.L,
  ),
];
var zatoSupers = [
["632146H", "Amorphous", "150", "All", "11+8", "", "", "+12", "", "", "4", "", "100%", ],
["632146S", "Sun Void", "20*3", "All", "11+14", "", "", "", "", "", "4", "", "100%", ],
["j.632146S", "Sun Void", "20*3", "", "11+14", "", "", "", "", "", "4", "", "100%", ],
];
var zatoHeaderSupers = [
  DataColumn2(
    label: Text("input"),
    size: ColumnSize.M,
  ),
  DataColumn2(
    label: Text("name"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("damage"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("guard"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("startup"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("active"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("recovery"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onBlock"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("onHit"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("riscGain"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("level"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("invuln"),
    size: ColumnSize.L,
  ),
  DataColumn2(
    label: Text("prorate"),
    size: ColumnSize.L,
  ),
];
var zatoData = <Category, List<List<String>>>{
  Category.normals: zatoNormals,
  Category.specials: zatoSpecials,
  Category.supers: zatoSupers
};