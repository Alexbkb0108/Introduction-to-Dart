void main(){
  
  final Square myArea = new Square(side: 0);
  
  myArea.side = 5;
  
  print(myArea.area);
  
}

class Square{
  double _side; //side * side //asi se definen propiedades privadas
  
  Square({required double side}):
    assert(side > 0, 'side must be >0'),//Assersiones son validaciones
    _side = side
   ;
  
  double get area{
    return _side * _side; 
  }
  
  set side (double side){
    if(side <= 0)throw 'Value must be >0';
    _side = side;
  }
  
  double calculateArea(){
    return _side * _side;
  }
}