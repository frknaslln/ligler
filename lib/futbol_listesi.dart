import 'package:ligler/futbol.dart';
import 'package:ligler/utils/strings.dart';
import 'package:flutter/material.dart';

class FutbollarListesi extends StatelessWidget {
  static List<Futbol> tumFutbollar;

  @override
  Widget build(BuildContext context) {
    tumFutbollar = verileriAl();
    return Scaffold(
      appBar: AppBar(
        title: Text("Takımlar"),
      ),
      body: listeYaratici(),
    );
  }

  List<Futbol> verileriAl() {
    List<Futbol> gecici = [];

    for (int m = 0; m < 12; m++) {
      String geciciBuyukResim;
      String geciciKucukResim;

      geciciKucukResim = Strings.FUTBOL_ADLARI[m].toLowerCase() + "${m + 1}.png";
      geciciBuyukResim =
          Strings.FUTBOL_ADLARI[m].toLowerCase() + "_buyuk${m + 1}.png";

      //debugPrint(geciciBuyukResim);
      //Futbol eklenecek = Futbol(Strings.FUTBOL_ADLARI[m], Strings.FUTBOL_TARIHLERI[m], Strings.FUTBOL_GENEL_OZELLIKLERI[m], );

      gecici.add(Futbol(
        Strings.FUTBOL_ADLARI[m],
        Strings.FUTBOL_TARIHLERI[m],
        Strings.FUTBOL_GENEL_OZELLIKLERI[m],
      ));
    }
    return gecici;
  }

  Widget listeYaratici() {
    return ListView.builder(
      itemBuilder: (context, index) {
        return satirDuzeni(context, index);
      },
      itemCount: tumFutbollar.length,
    );
  }

  Widget satirDuzeni(BuildContext context, indeks) {
    Futbol oAnkiElelman = tumFutbollar[indeks];
    return Card(
      elevation: 2,
      child: ListTile(
        onTap: ()=> Navigator.pushNamed(context, "/detayFutbol/$indeks"),
        title: Text(oAnkiElelman.Adi),
        subtitle: Text(oAnkiElelman.Tarihi),
        trailing: Icon(Icons.arrow_forward),
      ),
    );
  }
}
