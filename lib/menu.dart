import 'package:flutter/material.dart'; // Importa o pacote/material do Flutter, que contém os widgets e ferramentas para construir interfaces de usuário.

import 'contador.dart'; // Importa o arquivo contador.dart, que contém a definição da classe Contador.
import 'produto.dart'; // Importa o arquivo produto.dart, que contém a definição da classe Produto.
import 'cadastro.dart'; // Importa o arquivo cadastro.dart, que contém a definição da classe Cadastro.
import 'imc.dart'; // Importa o arquivo imc.dart, que contém a definição da classe Imc.

class menu extends StatefulWidget { // Define uma classe chamada menu que extende StatefulWidget, indicando que seu estado pode mudar.
  const menu({super.key}); // Construtor da classe menu.

  @override
  State<menu> createState() => _HomePageState(); // Cria um estado para a classe menu.
}

class _HomePageState extends State<menu> { // Define uma classe privada chamada _HomePageState que estende State<menu>.
  @override
  Widget build(BuildContext context) { // Define o método build que retorna a interface do aplicativo.
    return Scaffold( // Retorna um Scaffold, um layout básico de página do material design.
      appBar: AppBar( // Define a barra de aplicativos.
        title: Text("MENU"), // Define o título da barra de aplicativos.
        centerTitle: true, // Centraliza o título na barra de aplicativos.
        backgroundColor: Colors.deepOrange, // Define a cor de fundo da barra de aplicativos.
      ),

      body: SingleChildScrollView( // Permite a rolagem da interface para cima e para baixo.
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10), // Define o preenchimento interno do SingleChildScrollView.
        child: Column( // Define uma coluna para organizar os widgets verticalmente.
          crossAxisAlignment: CrossAxisAlignment.stretch, // Alinha os widgets filhos no início do eixo transversal (horizontalmente).
          children: <Widget>[ // Lista de widgets filhos da coluna.
            const Icon( // Cria um ícone.
              Icons.add_business_sharp, // Ícone a ser exibido.
              size: 140.0, // Tamanho do ícone.
              color: Colors.deepOrange, // Cor do ícone.
            ),
            Text( // Widget de texto.
              "Aplicação Principal", // Texto a ser exibido.
              textAlign: TextAlign.center, // Alinha o texto ao centro.
              style: TextStyle(color: Colors.blueGrey, fontSize: 25.0), // Estilo do texto.
            ),
            Text( // Widget de texto vazio.
              "", // Texto vazio.
              textAlign: TextAlign.center, // Alinha o texto ao centro.
              style: TextStyle(color: Colors.blueGrey, fontSize: 25.0), // Estilo do texto.
            ),
            Column( // Define uma coluna para os botões.
              crossAxisAlignment: CrossAxisAlignment.stretch, // Alinha os widgets filhos no início do eixo transversal (horizontalmente).
              children: <Widget>[ // Lista de widgets filhos da coluna.
                ElevatedButton( // Botão elevado.
                  onPressed: (){ // Define a ação ao pressionar o botão.
                    Navigator.push( // Empurra uma rota na pilha de navegação.
                        context,
                        MaterialPageRoute(builder: (context) => const Imc()) // Cria uma rota para a tela IMC.
                    );
                  },
                  child: const Text('IMC'), // Texto exibido no botão.
                ),
                ElevatedButton( // Botão elevado.
                  onPressed: (){ // Define a ação ao pressionar o botão.
                    Navigator.push( // Empurra uma rota na pilha de navegação.
                        context,
                        MaterialPageRoute(builder: (context) => const Contador()) // Cria uma rota para a tela Contador.
                    );
                  },
                  child: const Text('Contador'), // Texto exibido no botão.
                ),
                ElevatedButton( // Botão elevado.
                  onPressed: (){ // Define a ação ao pressionar o botão.
                    Navigator.push( // Empurra uma rota na pilha de navegação.
                        context,
                        MaterialPageRoute(builder: (context) => const Cadastro()) // Cria uma rota para a tela Cadastro.
                    );
                  },
                  child: const Text('Cadastro'), // Texto exibido no botão.
                ),
                ElevatedButton( // Botão elevado.
                  onPressed: (){ // Define a ação ao pressionar o botão.
                    Navigator.push( // Empurra uma rota na pilha de navegação.
                        context,
                        MaterialPageRoute(builder: (context) => const Produto()) // Cria uma rota para a tela Produto.
                    );
                  },
                  child: const Text('Produto'), // Texto exibido no botão.
                ),
              ],
            ),
          ],
        ),
      ), // Botão para executar o cálculo do IMC.
    );
  }
}
