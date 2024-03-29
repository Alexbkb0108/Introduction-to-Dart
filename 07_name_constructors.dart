void main() {
  
  final Hero wolverine = new Hero(name: 'Logan', power: 'regeneration', isAlive: true);
  
  print(wolverine);
  
  final Map<String, dynamic> createNewHero = {
    'name': 'piter parker',
    'power': 'lanzar telaraña',
    'isAlive': true,
  };
  
  final Hero newHero = new Hero.JsonFormat(createNewHero);
  
  print(newHero);
  
}

class Hero {
  String name;
  String power;
  bool isAlive;
  
  Hero({
    required this.name,
    required this.power,
    required this.isAlive
  });
  
  Hero.JsonFormat(Map<String, dynamic> json):
    name = json['name'] ?? 'No existe el nombre',
    power = json['power'] ?? 'Error en el poder',
    isAlive = json['isAlive'] ?? 'Indica si esta vivo o muerto';
  
  @override
  String toString(){
    return 'name: $name, power: $power, isAlive: ${isAlive ? 'Esta vivo': 'no esta vivo'}';
  }
}