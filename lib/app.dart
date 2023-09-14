import 'package:calculadora_imc_dart/models/pessoa.dart';
import 'package:calculadora_imc_dart/services/calculadora_imc.dart';
import 'package:calculadora_imc_dart/utils/console_utils.dart';

void execute() {
  print('Bem vindo a calculadora de IMC');

  String nome = ConsoleUtils.LerString(mensagem: 'Nome:');
  double peso = ConsoleUtils.LerDouble(mensagem: 'Peso (kg):');
  double altura = ConsoleUtils.LerDouble(mensagem: 'Altura (metros):');
  Pessoa pessoa = Pessoa(nome, peso, altura);

  CalculadoraImc calculadora = CalculadoraImc();
  calculadora.resultado(pessoa);
}
