import 'package:calculadora_imc_dart/exceptions/altura_invalida_exception.dart';
import 'package:calculadora_imc_dart/exceptions/nome_invalido_exception.dart';
import 'package:calculadora_imc_dart/exceptions/peso_invalido_exception.dart';

class Pessoa {
  String _nome = '';
  double _peso = 0.0;
  double _altura = 0.0;

  Pessoa(String nome, double peso, double altura) {
    setNome(nome);
    setPeso(peso);
    setAltura(altura);
  }

  //Setter _nome
  void setNome(String nome) {
    if (nome.trim() == '') {
      throw NomeInvalidoException;
    }

    _nome = nome;
  }

  //Getter _nome
  String getNome() {
    return _nome;
  }

  //Setter _peso
  void setPeso(double peso) {
    if (peso <= 0.0) {
      throw PesoInvalidoException;
    }

    _peso = peso;
  }

  //Getter _peso
  double getPeso() {
    return _peso;
  }

  //Setter _altura
  void setAltura(double altura) {
    if (altura <= 0.0) {
      throw AlturaInvalidaException;
    }

    _altura = altura;
  }

  //Getter _altura
  double getAltura() {
    return _altura;
  }

  @override
  String toString() {
    // TODO: implement toString
    return {'Nome': _nome, 'Peso': _peso, 'Altura': _altura}.toString();
  }
}
