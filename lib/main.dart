import 'package:flutter/material.dart'; // Importa o pacote/material do Flutter, que contém os widgets e ferramentas para construir interfaces de usuário.
import 'menu.dart'; // Importa o arquivo menu.dart, que contém a definição da classe Menu.

void main() { // Função principal que é o ponto de entrada do aplicativo.
  runApp(const MyApp()); // Executa o método runApp para iniciar o aplicativo, passando uma instância de MyApp.
}

class MyApp extends StatelessWidget { // Define uma classe chamada MyApp que extende StatelessWidget, indicando que seu estado não muda.
  const MyApp({super.key}); // Construtor da classe MyApp.

  @override
  Widget build(BuildContext context) { // Define o método build que retorna a interface do aplicativo.
    return const MaterialApp( // Retorna um MaterialApp, que configura a estrutura básica do aplicativo.
        debugShowCheckedModeBanner: false, // Define se a faixa de depuração será exibida no canto superior direito do aplicativo.
        home: menu() // Define a tela inicial do aplicativo como um objeto Menu.
    );
  }
}
