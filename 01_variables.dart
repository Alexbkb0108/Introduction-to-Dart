void main() {
  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;
  final List<String> habilities = <String>['impostor'];
  final List<String> sprites = <String>['ditto/front.png', 'ditto/back.png'];
  // dynamic == null --por defecto
  dynamic errorMessage = 'hola';
  errorMessage = true;
  errorMessage = [1,2,3,4,5,6];
  errorMessage = {1,2,3,4,5};
  errorMessage = () => true;
  errorMessage = null;
  
  
  print("""
  $pokemon
  $hp
  $isAlive
  $habilities
  $sprites
  $errorMessage
  """);//string multilinea
  
  
}
