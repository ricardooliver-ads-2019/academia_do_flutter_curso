// Tipo Generico --> nada mais é que um tipo de abstração

// ignore_for_file: unused_local_variable

void main(){
List<int> numeros = [1,2,3,4];
numeros.add(6);

Map<String, int> mapa = {};

final caixa = Caixa<Bola>();
caixa.adicionar(Bola());
Bola? itemcaixa = caixa.getItem();
print(caixa.alutruraItem());

final caixaBoneca = Caixa<Boneca>();
caixaBoneca.adicionar(Boneca());
Boneca? itemBoneca = caixaBoneca.getItem();
print(caixaBoneca.alutruraItem());

//final caixaPC = Caixa<PC>();

}

class Caixa<I extends Item> {
  I? _item;

  List<Bola> items = [];

  void adicionar(I item){
    _item = item;
  }

  I? getItem(){
    return _item;
  }

  double alutruraItem(){
    return _item?.altura() ?? 0;
  }
}

abstract class Item{
  double altura();
}

class Bola extends Item{
  @override
  double altura() {
    return 20.0;
  }
}

class Boneca extends Item{
  @override
  double altura() {
    return 40.0;
  }
}
class Telefone extends Item{
  @override
  double altura() {
    return 60.0;
  }
}

class PC{}