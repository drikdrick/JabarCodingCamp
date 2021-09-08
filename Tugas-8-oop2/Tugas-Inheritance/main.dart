import 'armor_titan.dart';
import 'attack_titan.dart';
import 'beast_titan.dart';
import 'human.dart';

main(List<String> args) {
  Armor_Titan armoredTitan = Armor_Titan();
  Attack_Titan attackTitan = Attack_Titan();
  beast_titan beastTitan = beast_titan();
  human humanTitan = human();

  armoredTitan.powerPoint = 2;
  attackTitan.powerPoint = 3;
  beastTitan.powerPoint = 4;
  humanTitan.powerPoint = 33;

  print("Level point Armor Titan: ${armoredTitan.powerPoint}");
  print("Kemampuan Armor Titan: " + armoredTitan.terjang());
  print("Level point Attack Titan: ${attackTitan.powerPoint}");
  print("Kemampuan Attack Titan: " + attackTitan.punch());
  print("Level point Beast Titan: ${beastTitan.powerPoint}");
  print("Kemampuan Beast Titan: " + beastTitan.lempar());
  print("Level point Human: ${humanTitan.powerPoint}");
  print("Kemampuan Human: " + humanTitan.killAlltitan());
}
