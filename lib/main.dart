import 'package:flutter/material.dart';
import 'package:ligler/futbol_detay.dart';
import 'futbol.dart';
import 'futbol_listesi.dart';

void main() {
  runApp(Uygulamam());
}

class Uygulamam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Futbol Takımları Uygulaması",
      theme: ThemeData(primarySwatch: Colors.red),
      initialRoute: "/",
      routes: {"/": (context) => FutbollarListesi()},
      onGenerateRoute: (RouteSettings settings) {
        List<String> yollar = settings.name
            .split("/"); // detayFutbol/$indeks şeklinde gelen veriyi ayrıştır

        if (yollar[1] == "detayFutbol") {
          return MaterialPageRoute(builder: (context) => FutbolDetay(int.parse(yollar[2])));
        }
        return null ;
      },
    );
  }
}
