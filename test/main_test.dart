import 'package:test/expect.dart';
import 'package:imc_calc/model/pessoa.dart';
import 'package:test/scaffolding.dart';

void main() {
  Pessoa user = Pessoa('Pedro', 1.6, 60);
  test('Teste para validar o valor igual do IMC peso Normal', () {
    expect(user.calc(user.getAltura(), user.getPeso()), equals(23.44));
  });
}
