

class Pessoa {
  String nome = ''; 
  double peso = 0;
  double altura = 0;
  
  double getPeso(){
    return peso;
  }

  double getAltura(){
    return altura;
  }

  void setPeso(double peso){
    this.peso = peso;
  }

  void setAltura(double altura){
    this.altura = altura;
  }

  Pessoa(String nome, double peso, double altura){
    this.nome = nome;
    this.peso = peso;
    this.altura = altura;
  }

  double clacularIMC(){
    return this.peso/(this.altura*this.altura);
  }

  @override
  String toString(){
    return {"Nome:": nome, "Peso": this.peso,  "Altura: ": this.altura}.toString();
  }
  
}