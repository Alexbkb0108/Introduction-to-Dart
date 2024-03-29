void main(){
  final numbers = [1,1,2,3,3,3,4,4,5,5,5,6,6,6,6];
  
  print('List original $numbers');
  print('List original ${numbers.toSet().toList()}');
  print('Length ${numbers.length}');
  print('Index 0: ${numbers[0]}');
  print('First: ${numbers.first}');
  print('Last: ${numbers.last}');
  
  final reversedNumber = numbers.reversed;
  
  print('Iterable: ${reversedNumber}');
  print('Iterable: ${reversedNumber.toList()}');// convierte el iterable en una lista
  print('Iterable: ${reversedNumber.toSet()}');//convierte el iterable en un set de numeros
  //La diferencia entre un sety y una lista el set es un listado con valores unicos
  
  final numbersGreaterThan5 = numbers.where ((int num){
    return num >5;
  });
  
  print('>5 $numbersGreaterThan5');
  print('>5 ${numbersGreaterThan5.toSet()}');
}