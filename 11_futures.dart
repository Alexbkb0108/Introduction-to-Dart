void main(){
  print('Incio del programa');
  
  httpGet('https://alejandro-medina.com').then((value) {
    print(value);
  }).catchError((err){
    print('Error: $err');
  });
  
  print('Fin del programa');
}

Future<String> httpGet(String url){
  
  return Future.delayed( const Duration(seconds: 2), () {
    
    throw 'Este es un ejemplo de si se manda el error';
    
    //return 'Respuesta de la peticion';
  } );
}