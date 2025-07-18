// Função: TIPO NOME(PARÂMETROS){}
void main() {
  var minhaClasse = MinhaClasse(); // instância da classe
  printHelloWorld(message: minhaClasse.message); // parâmetros nomeados
}

void printHelloWorld({required String message}) {
  print(message);
}

// CLASSES: class NomeDaClasse{}

class MinhaClasse {
  var message = "Hello World!";
}
