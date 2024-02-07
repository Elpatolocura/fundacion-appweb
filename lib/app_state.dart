import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _fotonoticiaprincipal = '';
  String get fotonoticiaprincipal => _fotonoticiaprincipal;
  set fotonoticiaprincipal(String value) {
    _fotonoticiaprincipal = value;
  }

  String _video = '';
  String get video => _video;
  set video(String value) {
    _video = value;
  }

  List<String> _carruselfotos = [];
  List<String> get carruselfotos => _carruselfotos;
  set carruselfotos(List<String> value) {
    _carruselfotos = value;
  }

  void addToCarruselfotos(String value) {
    _carruselfotos.add(value);
  }

  void removeFromCarruselfotos(String value) {
    _carruselfotos.remove(value);
  }

  void removeAtIndexFromCarruselfotos(int index) {
    _carruselfotos.removeAt(index);
  }

  void updateCarruselfotosAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _carruselfotos[index] = updateFn(_carruselfotos[index]);
  }

  void insertAtIndexInCarruselfotos(int index, String value) {
    _carruselfotos.insert(index, value);
  }

  String _misionfoto = '';
  String get misionfoto => _misionfoto;
  set misionfoto(String value) {
    _misionfoto = value;
  }

  String _visionfoto = '';
  String get visionfoto => _visionfoto;
  set visionfoto(String value) {
    _visionfoto = value;
  }

  String _fotoprincipio1 = '';
  String get fotoprincipio1 => _fotoprincipio1;
  set fotoprincipio1(String value) {
    _fotoprincipio1 = value;
  }

  String _fotoprincipio2 = '';
  String get fotoprincipio2 => _fotoprincipio2;
  set fotoprincipio2(String value) {
    _fotoprincipio2 = value;
  }

  String _fotoprincipio3 = '';
  String get fotoprincipio3 => _fotoprincipio3;
  set fotoprincipio3(String value) {
    _fotoprincipio3 = value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
