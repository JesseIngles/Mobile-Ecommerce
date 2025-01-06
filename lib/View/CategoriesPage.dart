import 'package:ecommerce/Models/Categoria.dart';
import 'package:flutter/material.dart';

class Categoriespage extends StatefulWidget {
  const Categoriespage({super.key});

  @override
  State<Categoriespage> createState() => _CategoriespageState();
}

class _CategoriespageState extends State<Categoriespage> {
  List<Categoria> categorias = [
    Categoria(Imageurl: 'assets/hoodie.png', Titulo: 'Hoodies'),
    Categoria(Imageurl: 'assets/shorts.png', Titulo: 'Shorts'),
    Categoria(Imageurl: 'assets/shoes.png', Titulo: 'Shoes'),
    Categoria(Imageurl: 'assets/bags.png', Titulo: 'Bag'),
    Categoria(Imageurl: 'assets/glasses.png', Titulo: 'Acessories')
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.only(left: 20, top: 20),
        child: Column(
          children: [
            CircleAvatar(
              child: Image.asset('assets/arrowleft2.png'),
            ),
            Column(
              children: categorias.map((categoria) => Container(
                child: Row(children: [
                  Image.asset(categoria.Imageurl),
                  Text(categoria.Titulo)
                ],),
              )).toList(),
            )
          ],
        ),
      ),
    );
  }
}
