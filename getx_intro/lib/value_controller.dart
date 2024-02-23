//Classe controladora do nosso app
import 'package:get/get.dart';

class ValueController extends GetxController {
  //Adicionando variável ao campo texto
  String definedValue = '';

  //Criando uma nova função para chamar
  void setValue(String value) {
    definedValue = value;

    //Atualizará o deninedValue que avisará o Getbuilder
    //para retornar o ctrl.definedvalue na nossa main.dart
    update();
  }
}
