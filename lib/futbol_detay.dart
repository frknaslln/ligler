import 'package:flutter/material.dart';
import 'futbol_listesi.dart';


class FutbolDetay extends StatefulWidget {
  int futbolNO;
  FutbolDetay(this.futbolNO);
  Color baskinRenk;



  @override
  _FutbolDetayState createState() => _FutbolDetayState();
}
class _FutbolDetayState extends State<FutbolDetay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverAppBar(
            primary: true,
            pinned: true,
            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(

              centerTitle: true,
              title: Text(FutbollarListesi.tumFutbollar[widget.futbolNO].Adi),
            ),
          ),
          SliverToBoxAdapter(
            child: Text(
              FutbollarListesi.tumFutbollar[widget.futbolNO].Detayi,
              style: TextStyle(fontSize: 21),
            ),
          )
        ],
      ),
    );
  }
}
