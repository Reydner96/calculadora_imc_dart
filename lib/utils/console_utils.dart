import 'dart:convert';
import 'dart:io';

// classes utilizada para trater as entradas no console
class ConsoleUtils {
  /// # Ler string digitada no console
  ///
  /// * Exemplo sem mensagem: `ConsoleUtils.lerString();`
  /// * Exemplo com mensagem: `ConsoleUtils.lerString(mensagem: 'Exemplo');`

  static String LerString({String mensagem = ''}) {
    if (mensagem.trim() != '') {
      print(mensagem);
    }

    var linha = stdin.readLineSync(encoding: utf8);
    return linha ?? '';
  }

  /// # Ler double digitado no console
  ///
  /// * Exemplo sem mensagem: `ConsoleUtils.lerDouble();`
  /// * Exemplo com mensagem: `ConsoleUtils.lerDouble(mensagem: 'Exemplo');`

  static double LerDouble({String mensagem = ''}) {
    do {
      try {
        var linha = LerString(mensagem: mensagem);

        // Tratar número no formato 0.000,00
        if (linha.contains(',')) {
          linha = linha.replaceAll('.', '');
          linha = linha.replaceAll(',', '.');
        }

        return double.parse(linha);
      } catch (e) {
        print('Número inválido.');
      }
    } while (true);
  }
}
