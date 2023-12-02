import 'dart:math';

import 'package:flutter/material.dart';

class ImcChangeNotifierController extends ChangeNotifier {
  var imc = 0.0;
  
  //sempre que usarmos este metodo temos que inseri o notify para ele notificar todas as variaveis e informar quem
  //recebe elas que houve uma alteração

  Future<void> calculaImc(
      {required double peso, required double altura}) async {
    imc = 0;
    notifyListeners();
    await Future.delayed(const Duration(seconds: 1));

    imc = peso / pow(altura, 2);
    notifyListeners();
  }
}
