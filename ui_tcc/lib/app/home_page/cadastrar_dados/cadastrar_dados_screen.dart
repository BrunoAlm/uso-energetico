import 'package:flutter/material.dart';

class CadastrarDadosScreen extends StatefulWidget {
  const CadastrarDadosScreen({Key? key}) : super(key: key);

  @override
  State<CadastrarDadosScreen> createState() => _CadastrarDadosScreenState();
}

class _CadastrarDadosScreenState extends State<CadastrarDadosScreen> {
  int paginaAtual = 0;
  @override
  Widget build(BuildContext context) {
    PageController _controller = PageController();
    List<Widget> _paginas = [
      const Page1(),
      const Page1(),
      const Page1(),
      const Page1(),
      const Page1(),
    ];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 38.0),
        child: PageView(controller: _controller, children: _paginas),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton.extended(
            heroTag: 'voltar',
            onPressed: () {
              if (paginaAtual > _controller.page!.toInt()) {
                setState(() {
                  paginaAtual--;
                });
              }
              print('voltando: ${_controller.page}');
              _controller.previousPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
            },
            label: const Text('Voltar'),
          ),
          SizedBox(
            height: 40,
            width: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _paginas.length,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Center(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color:
                          index == paginaAtual ? Colors.black : Colors.black38,
                    ),
                  ),
                );
              },
            ),
          ),
          FloatingActionButton.extended(
            heroTag: 'proximo',
            onPressed: () {
              _controller.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
              print('indo: ${_controller.page}');
              if (paginaAtual <= _controller.page!.toInt() - 1) {
                setState(() {
                  paginaAtual++;
                });
              }
            },
            label: const Text('Próximo'),
          ),
        ],
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Conhecendo seus gastos:',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: 10),
        Text(
          'Para calcular os custos, é precisamos saber quais são os gastos energético da sua casa.',
          style: Theme.of(context).textTheme.labelLarge,
        ),
        Text(
          'Preencha os dados com a maior precisão possível.',
          style: Theme.of(context).textTheme.labelLarge,
        ),
      ],
    );
  }
}
