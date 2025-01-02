import 'package:character_creation_app/models/skill.dart';
import 'package:character_creation_app/models/stats.dart';
import 'package:character_creation_app/models/vocation.dart';

class Character with Stats {
  // constructor
  Character(
      {required this.name,
      required this.slogan,
      required this.vocation,
      required this.id});

  // fields
  final Set<Skill> skills = {};
  final Vocation vocation;
  final String name;
  final String slogan;
  final String id;
  bool _isFav = false;

  // getter
  bool get isFav => _isFav;

  void toggleFav() {
    _isFav = !_isFav;
  }

  void updateSkill(Skill skill) {
    skills.clear();
    skills.add(skill);
  }
}

List<Character> characters = [
  Character(
      name: 'Klara', slogan: 'pluto', vocation: Vocation.algorithmic, id: '1'),
  Character(
      id: '2',
      name: 'Jonny',
      vocation: Vocation.junkie,
      slogan: 'Light me up...'),
  Character(
      id: '3',
      name: 'Crimson',
      vocation: Vocation.raider,
      slogan: 'Fire in the hole!'),
  Character(
      id: '4',
      name: 'Shaun',
      vocation: Vocation.ninja,
      slogan: 'Alright then gang.'),
];
