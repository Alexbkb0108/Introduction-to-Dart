void main(){
  
  final flypper = new Delfin();
  flypper.nadar();
  
  final murcielago = new Murcielago();
  murcielago.caminar();
  murcielago.volar();
  
  final pato = new Pato();
  pato.volar();
  pato.caminar();
  pato.nadar();
  
}

abstract class Animal{}

abstract class Mamifero extends Animal{}
abstract class Ave extends Animal{}
abstract class Pez extends Animal{}


mixin Volador{
  void volar () => print('Estoy volando');
}
mixin Caminante{
  void caminar () => print('Estoy caminando');
}
mixin Nadador{
  void nadar () => print('Estoy nadando');
}

class Delfin extends Mamifero with Nadador {}
class Murcielago extends Mamifero with Caminante, Volador {}
class Gato extends Mamifero with Caminante {}

class Paloma extends Ave with Caminante, Volador {}
class Pato extends Ave with Nadador, Caminante, Volador {}

class Tiburon extends Pez with Nadador {}
class PezVolador extends Pez with Nadador, Volador {}