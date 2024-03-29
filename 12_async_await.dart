void main() async {
  print('Incio del programa');
  
  
  try{
    final value = await httpGet('https://alejandro-medina.com');
    print(value);
  }catch(err){
    print('Hubo un error: $err');
  }
  //httpGet('https://alejandro-medina.com').then((value) {
  //  print(value);
  //}).catchError((err){
  //  print('Error: $err');
  //});
  
  print('Fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed( const Duration(seconds: 2));
  //return Future.delayed( const Duration(seconds: 2), () {
    
    throw 'Este es un ejemplo de si se manda el error';
    
    //return 'Respuesta de la peticion';
  //} );
}