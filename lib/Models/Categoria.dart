class Categoria {
  String Imageurl;
  String Titulo;
  
  Categoria({required this.Imageurl, required this.Titulo});

  static List<Categoria> AllCategories()
  {
    return
    [
      Categoria(Imageurl: 'assets/hoodie.png',Titulo: 'Hoodies'),
      Categoria(Imageurl: 'assets/shorts.png',Titulo: 'Shorts'),
      Categoria(Imageurl: 'assets/shoes.png',Titulo: 'Shoes'),
      Categoria(Imageurl: 'assets/bags.png',Titulo: 'Bag'),
      Categoria(Imageurl: 'assets/glasses.png',Titulo: 'Acessories')
    ];
  }
}
