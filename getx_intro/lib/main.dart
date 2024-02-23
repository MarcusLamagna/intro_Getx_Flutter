import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_intro/value_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  //Controlador de um campo de texto
  final textController = TextEditingController();

  //Criando um novo objeto para classe Value_Controller
  final valueController = ValueController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Valor
            GetBuilder<ValueController>(
              init: valueController,
              builder: (ctrl) {
                return Text('Valor definido: ${ctrl.definedValue}');
              },
            ),
            //Campo de texto
            TextField(
              controller: textController,
            ),
            //Botão
            ElevatedButton(
              onPressed: () {
                String value = textController.text;
                //Definindo valor da variável qeu recebe o value
                valueController.setValue(value);
              },
              child: const Text('Confirmar'),
            ),
          ],
        ),
      ),
    );
  }
}
