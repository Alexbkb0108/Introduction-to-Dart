void main(){
  emitNumbers().listen((value){
    print('Stream value: $value');
  });
}

Stream<int> emitNumbers() async*{
  final valuesEmit = [1,2,3,4,5];
  
  for( int i in valuesEmit ){
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}