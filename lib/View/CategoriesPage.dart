import 'package:ecommerce/Models/Categoria.dart';
import 'package:ecommerce/View/CategoryPage.dart';
import 'package:flutter/material.dart';

class Categoriespage extends StatefulWidget {
  const Categoriespage({super.key});

  @override
  State<Categoriespage> createState() => _CategoriespageState();
}

class _CategoriespageState extends State<Categoriespage> {
  List<Categoria> categorias = [
      Categoria(Id:1, Imageurl: 'assets/hoodie.png', Titulo: 'Hoodies'),
      Categoria(Id:2, Imageurl: 'assets/shorts.png', Titulo: 'Shorts'),
      Categoria(Id:3, Imageurl: 'assets/shoes.png', Titulo: 'Shoes'),
      Categoria(Id:4, Imageurl: 'assets/bags.png', Titulo: 'Bag'),
      Categoria(Id:5, Imageurl: 'assets/glasses.png', Titulo: 'Acessories')
  ];

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
                height: 20,
              ),
              Text(
                'Shop by Categories',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: categorias
                    .map((categoria) => GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Categorypage(categoryId: categoria.Id,)));
                          },
                          child: Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                                color: Color(0xFFF4F4F4),
                                borderRadius: BorderRadius.circular(10)),
                            height: 64,
                            child: Row(
                              children: [
                                Image.asset(categoria.Imageurl),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  categoria.Titulo,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ))
                    .toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
