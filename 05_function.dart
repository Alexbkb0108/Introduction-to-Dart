void main(){
  print(greetEveryone());
  
  print ( 'Suma ${ addTwoNumbers(  10, 10 ) }');
  
  print ( 'Suma ${ addTwoNumbersOptional(  10 ) }');
  
  print( greetPerson ( name: 'fernando', message: 'Hi, ' ) );
}


String greetEveryone() => 'Hello everyone';

int addTwoNumbers( int a, int b ) => a + b;

int addTwoNumbersOptional( int a, [int b = 0] ) {
  //b = b ?? 0;
  //b ??= 0
  return a + b;
} 

String greetPerson({ required String name, String message = 'Hola,'}) {
  return '$message Fernando';
}