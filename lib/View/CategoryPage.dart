import 'package:ecommerce/Models/Categoria.dart';
import 'package:ecommerce/Models/Produto.dart';
import 'package:flutter/material.dart';

class Categorypage extends StatefulWidget {
  final int categoryId;
  Categorypage({super.key, required this.categoryId});

  @override
  State<Categorypage> createState() => _CategorypageState();
}

class _CategorypageState extends State<Categorypage> {
  late Categoria categoria;
  late List<Produto> produtosCategoria;
  @override
  void initState() {
    super.initState();
    categoria = Categoria.AllCategories()
        .firstWhere((categoria) => categoria.Id == widget.categoryId);

    produtosCategoria = Produto.TodosProdutosPorCategoria(widget.categoryId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.only(left: 20, top: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: CircleAvatar(
                  child: Image.asset('assets/arrowleft2.png'),
                  backgroundColor: Color(0xFFF4F4F4),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '${categoria.Titulo}(${Categoria.AllCategories().length})',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10
                    ),
                    itemCount: produtosCategoria.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 20,
                        child: Text(produtosCategoria[index].Nome),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
