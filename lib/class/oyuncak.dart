void main() {
  Oyuncak oyun = Oyuncak('Ayı Yogi', 200, true);
  print(oyun.adi + oyun.fiyati + oyun.satilikMi);
}

class Oyuncak {
  var adi;
  var fiyati;
  var satilikMi;

  Oyuncak(adi, fiyati, satilikMi) {
    this.adi = adi;
    this.fiyati = fiyati;
    this.satilikMi = satilikMi;
  }


  oyuncakBilgileri() {
    print('Oyuncağın adı = $adi, Fiyatı = $fiyati, Satılık mı ? ${satilikMi ? "Hayır" : "Evet"}');
  }
}
