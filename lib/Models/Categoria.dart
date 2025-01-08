class Categoria {
  int Id;
  String Imageurl;
  String Titulo;

  Categoria({required this.Id, required this.Imageurl, required this.Titulo});

  static List<Categoria> AllCategories() {
    return [
      Categoria(Id:1, Imageurl: 'assets/hoodie.png', Titulo: 'Hoodies'),
      Categoria(Id:2, Imageurl: 'assets/shorts.png', Titulo: 'Shorts'),
      Categoria(Id:3, Imageurl: 'assets/shoes.png', Titulo: 'Shoes'),
      Categoria(Id:4, Imageurl: 'assets/bags.png', Titulo: 'Bag'),
      Categoria(Id:5, Imageurl: 'assets/glasses.png', Titulo: 'Acessories')
    ];
  }

  
}
