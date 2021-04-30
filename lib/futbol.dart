import 'package:flutter/material.dart';

class Futbol {

  String _Adi;
  String _Tarihi;
  String _Detayi;


  Futbol(this._Adi, this._Tarihi, this._Detayi, );




  String get Detayi => _Detayi;

  set Detayi(String value) {
    _Detayi = value;
  }

  String get Tarihi => _Tarihi;

  set Tarihi(String value) {
    _Tarihi = value;
  }

  String get Adi => _Adi;

  set Adi(String value) {
    _Adi = value;
  }


}
