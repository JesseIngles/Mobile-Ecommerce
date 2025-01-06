
class Produto {
  String Imageurl;
  String Nome;
  String PrecoAtual;
  late String PrectoAnterior = '';
  bool Loved = false;

  Produto(
      {required this.Imageurl,
      required this.Nome,
      required this.PrecoAtual,
      });

  static List<Produto> MaisVendidos() {
    return [
      //Produto(Imageurl: Imageurl, Nome: Nome, PrecoAtual: PrecoAtual, PrectoAnterior: PrectoAnterior)
    ];
  }
}
