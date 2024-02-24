//Classe controladora do nosso app
import 'package:get/get.dart';

class ValueController extends GetxController {
  //Adicionando variável ao campo texto
  String definedValue = '';

  //Criando Loading
  bool isLoading = false;

  //Criando uma nova função para chamar
  Future<void> setValue(String value) async {
    //Avisando que nossa variável isLoading sofre uma modificação
    isLoading = true;
    update();

    //Tempo para carregamento de algum processo
    await Future.delayed(const Duration(seconds: 2));

    definedValue = value;

    //Atualizará o deninedValue que avisará o Getbuilder
    //para retornar o ctrl.definedvalue na nossa main.dart
    isLoading = false;
    update();
  }
}
