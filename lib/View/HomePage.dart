import 'package:ecommerce/Models/Categoria.dart';
import 'package:ecommerce/Models/Produto.dart';
import 'package:ecommerce/View/CategoriesPage.dart';
import 'package:flutter/material.dart';
import 'package:animated_custom_dropdown/custom_dropdown.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Categoria> categorias = [
    Categoria(Imageurl: 'assets/hoodie.png', Titulo: 'Hoodies'),
    Categoria(Imageurl: 'assets/shorts.png', Titulo: 'Shorts'),
    Categoria(Imageurl: 'assets/shoes.png', Titulo: 'Shoes'),
    Categoria(Imageurl: 'assets/bags.png', Titulo: 'Bag'),
    Categoria(Imageurl: 'assets/glasses.png', Titulo: 'Acessories')
  ];

  List<Produto> maisVendidos = [
    Produto(
      Imageurl: 'assets/Rectangle 8(1).png',
      Nome: "Men's Harrington Jacket",
      PrecoAtual: '148.00',
    ),
    Produto(
        Imageurl: 'assets/Rectangle 8(2).png',
        Nome: "Max Cirro Men's Slides",
        PrecoAtual: '55.00'),
    Produto(
      Imageurl: 'assets/Rectangle 8(1).png',
      Nome: "Men's Harrington Jacket",
      PrecoAtual: '148.00',
    )
  ];

  List<String> generos = ['Mens', 'Womens'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 20, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                CircleAvatar(
                    child: Image.asset('assets/Ellipse 13.png'),
                    backgroundColor: Colors.white),
                Spacer(),
                Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(15)),
                  child: DropdownButton(
                    underline: SizedBox(),
                    dropdownColor: Colors.grey[100],
                    value: generos[0],
                    onChanged: (valor) {},
                    items: generos
                        .map((genero) => DropdownMenuItem<String>(
                              value: genero,
                              child: Text(genero),
                            ))
                        .toList(),
                  ),
                ),
                Spacer(),
                CircleAvatar(
                    child: Image.asset('assets/bag2.png'),
                    backgroundColor: Colors.purple),
                SizedBox(
                  width: 10,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(
                left: 20,
              ),
              margin: EdgeInsets.only(right: 12),
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(20)),
              child: TextField(
                  decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(color: Colors.black),
                icon: Image.asset('assets/searchnormal1.png'),
                border: InputBorder.none,
              )),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Categories',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Categoriespage()));
                        },
                        child: Text(
                          'See All',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 15),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: categorias
                            .map((categoria) => Container(
                                  margin: EdgeInsets.only(right: 10),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 66,
                                        margin: EdgeInsets.only(bottom: 5),
                                        child: Image.asset(categoria.Imageurl),
                                      ),
                                      Text(categoria.Titulo)
                                    ],
                                  ),
                                ))
                            .toList()),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Top Selling',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Text(
                        'See All',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: maisVendidos
                          .map((produto) => Container(
                                padding: EdgeInsets.all(5),
                                margin: EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey[100],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(produto.Imageurl),
                                    Text(produto.Nome),
                                    Row(
                                      children: [
                                        Text(
                                          "\$${produto.PrecoAtual}",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          produto.PrectoAnterior,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ))
                          .toList(),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'New in',
                        style: TextStyle(
                          color: Colors.purple,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'See All',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 15),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: maisVendidos
                          .map((produto) => Container(
                                padding: EdgeInsets.all(5),
                                margin: EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey[100],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(produto.Imageurl),
                                    Text(produto.Nome),
                                    Row(
                                      children: [
                                        Text(
                                          "\$${produto.PrecoAtual}",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          produto.PrectoAnterior,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ))
                          .toList(),
                    ),
                  ),
                  SizedBox(height: 15),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset('assets/home.png'), label: ' '),
          BottomNavigationBarItem(
              icon: Image.asset('assets/notificationbing.png'), label: ' '),
          BottomNavigationBarItem(
              icon: Image.asset('assets/receipt1.png'), label: ' '),
          BottomNavigationBarItem(
              icon: Image.asset('assets/profile.png'), label: ' ')
        ],
      ),
    );
  }
}
