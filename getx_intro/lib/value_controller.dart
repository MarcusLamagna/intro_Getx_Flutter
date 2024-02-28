//Classe controladora do nosso app
import 'package:get/get.dart';

class ValueController extends GetxController {
  //Variáveis observáveis do GetX
  //Adicionando variável ao campo texto
  RxString definedValue = ''.obs;

  //Criando Loading
  RxBool isLoading = false.obs;

  //Criando uma nova função para chamar
  Future<void> setValue(String newValue) async {
    //Avisando que nossa variável isLoading sofre uma modificação
    isLoading.value = true;

    //Tempo para carregamento de algum processo
    await Future.delayed(const Duration(seconds: 2));

    definedValue.value = newValue;

    //Atualizará o deninedValue que avisará o Getbuilder
    //para retornar o ctrl.definedvalue na nossa main.dart
    isLoading.value = false;
  }
}
