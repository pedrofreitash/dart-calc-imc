class Pessoa {
  late String _nome;
  late double _altura;
  late double _peso;

  void setNome(nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  void setAltura(altura) {
    _altura = altura;
  }

  double getAltura() {
    return _altura;
  }

  void setPeso(peso) {
    _peso = peso;
  }

  double getPeso() {
    return _peso;
  }

  Pessoa(String nome, double altura, double peso) {
    _nome = nome;
    _altura = altura;
    _peso = peso;
  }

  double calc(double altura, double peso) {
    var imc = peso / (altura * altura);
    return double.parse(imc.toStringAsFixed(2));
  }

  String classificaIMC(imc) {
    switch (imc) {
      case < 18.5:
        return 'Abaixo do peso';
      case >= 18.5 && < 24.9:
        return 'Peso normal';
      case >= 25.0 && < 29.9:
        return 'Sobrepeso';
      case >= 30.0 && < 34.9:
        return 'Obesidade grau I';
      case >= 35.0 && < 39.9:
        return 'Obesidade grau II';
      case >= 40.0:
        return 'Obesidade grau III';
      default:
        return 'não foi possivel clasificar';
    }
  }
}
