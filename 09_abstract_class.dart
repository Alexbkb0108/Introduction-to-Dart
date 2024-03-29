void main(){
  
  final WindPlant plant = new WindPlant( initialEnergy: 100 );
  final NuclearPlant plantNuclear = new NuclearPlant( energyLeft: 100 );
  
 // plant.consumeEnergy(81);
  
  print(plant.energyLeft);
  
  print('wind: ${chargePhone(plant)}');
  print('nuclear: ${chargePhone(plantNuclear)}');
  
}

double chargePhone(EnergyPlant plant){
  if(plant.energyLeft < 10){
    throw Exception('Not enough energy');
  }
  
  return plant.energyLeft - 10;
}

enum PlantType {nuclear, wind, water}

abstract class EnergyPlant {
  double energyLeft;
  final PlantType type;
  
  EnergyPlant({required this.energyLeft, required this.type});
  
  void consumeEnergy( double amount );
}

//implemets or extends
//Al extender una clase se eredan todas las propiedades de esta clase

class WindPlant extends EnergyPlant {
  
  WindPlant({
    required double initialEnergy
  })
    :super(energyLeft: initialEnergy, type: PlantType.wind);
  
  @override
  void consumeEnergy(double energy){
    energyLeft -= energy;
  }
}



class NuclearPlant implements EnergyPlant{
  @override
  double energyLeft;
  @override
  final PlantType type = PlantType.nuclear;
  
  NuclearPlant({ required this.energyLeft });
  
  @override
  void consumeEnergy(double energy){
    energyLeft -= (energy * 0.5);
  }
  
}









