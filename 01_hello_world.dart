void main(){
  
  //var myName = 'Alejandro';
  //final myName = 'Alejandro'; //Este valor nunca cambiara //Esta variable se asigna en tiempo de ejecucion
  //late final myName = 'Alejandro';//Inicializacion tardia de un valor 
  const myName = 'Alejandro'; //crea una constante en tiempo de construccion de una aplicacion
  //String myName = 'Alejandro';
  
  print('hola $myName'); //interpolacion de strings
  print('hola ${ myName.toUpperCase() }');
  
}
