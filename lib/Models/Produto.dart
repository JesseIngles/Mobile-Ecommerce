class Produto {
  int CategoriaId;
  String Imageurl;
  String Nome;
  String PrecoAtual;
  late String PrectoAnterior = '';
  bool Loved = false;

  Produto({
    required this.CategoriaId,
    required this.Imageurl,
    required this.Nome,
    required this.PrecoAtual,
  });

  static List<Produto> MaisVendidos() {
    return [
      Produto(
      CategoriaId: 1,
      Imageurl: 'assets/Rectangle 8(1).png',
      Nome: "Men's Harrington Jacket",
      PrecoAtual: '148.00',
    ),
    Produto(
        CategoriaId: 2,
        Imageurl: 'assets/Rectangle 8(2).png',
        Nome: "Max Cirro Men's Slides",
        PrecoAtual: '55.00'),
    Produto(
      CategoriaId: 2,
      Imageurl: 'assets/Rectangle 8(1).png',
      Nome: "Men's Harrington Jacket",
      PrecoAtual: '148.00',
    )
    ];
  }

  static List<Produto> TodosProdutosPorCategoria(int id) {
    return TodosProdutos().where((produto) => produto.CategoriaId == id).toList();
  }

  static List<Produto> TodosProdutos() {
    return [
      Produto(
          CategoriaId: 1,
          Imageurl: 'assets/Rectangle 8(1)1.png',
          Nome: "Men's Fleece Pullover Hoodie",
          PrecoAtual: '100.00'),
      Produto(
          CategoriaId: 2,
          Imageurl: 'assets/Rectangle 8(1)1.png',
          Nome: "Men's Fleece Pullover Hoodie",
          PrecoAtual: '100.00'),
      Produto(
          CategoriaId: 2,
          Imageurl: 'assets/Rectangle 8(1)1.png',
          Nome: "Men's Fleece Pullover Hoodie",
          PrecoAtual: '100.00'),
      Produto(
          CategoriaId: 1,
          Imageurl: 'assets/Rectangle 8(1)1.png',
          Nome: "Men's Fleece Pullover Hoodie",
          PrecoAtual: '100.00'),
      Produto(
          CategoriaId: 1,
          Imageurl: 'assets/Rectangle 8(1)1.png',
          Nome: "Men's Fleece Pullover Hoodie",
          PrecoAtual: '100.00'),
      Produto(
          CategoriaId: 1,
          Imageurl: 'assets/Rectangle 8(1)1.png',
          Nome: "Men's Fleece Pullover Hoodie",
          PrecoAtual: '100.00'),
    ];
  }
}
