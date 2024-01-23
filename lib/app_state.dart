import 'package:flutter/material.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
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

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _token = prefs.getString('ff_token') ?? _token;
    });
    _safeInit(() {
      _restauranteID = prefs.getInt('ff_restauranteID') ?? _restauranteID;
    });
    _safeInit(() {
      _userID = prefs.getInt('ff_userID') ?? _userID;
    });
    _safeInit(() {
      _nomeRstaurante = prefs.getString('ff_nomeRstaurante') ?? _nomeRstaurante;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _token = '';
  String get token => _token;
  set token(String value) {
    _token = value;
    prefs.setString('ff_token', value);
  }

  int _restauranteID = 0;
  int get restauranteID => _restauranteID;
  set restauranteID(int value) {
    _restauranteID = value;
    prefs.setInt('ff_restauranteID', value);
  }

  int _userID = 0;
  int get userID => _userID;
  set userID(int value) {
    _userID = value;
    prefs.setInt('ff_userID', value);
  }

  String _tipoUser = '';
  String get tipoUser => _tipoUser;
  set tipoUser(String value) {
    _tipoUser = value;
  }

  String _nomeUser = '';
  String get nomeUser => _nomeUser;
  set nomeUser(String value) {
    _nomeUser = value;
  }

  double _cover = 0.0;
  double get cover => _cover;
  set cover(double value) {
    _cover = value;
  }

  double _taxa = 0.0;
  double get taxa => _taxa;
  set taxa(double value) {
    _taxa = value;
  }

  double _embalagem = 0.0;
  double get embalagem => _embalagem;
  set embalagem(double value) {
    _embalagem = value;
  }

  String _nomeRstaurante = '';
  String get nomeRstaurante => _nomeRstaurante;
  set nomeRstaurante(String value) {
    _nomeRstaurante = value;
    prefs.setString('ff_nomeRstaurante', value);
  }

  String _mesa = '';
  String get mesa => _mesa;
  set mesa(String value) {
    _mesa = value;
  }

  LatLng? _locationUser;
  LatLng? get locationUser => _locationUser;
  set locationUser(LatLng? value) {
    _locationUser = value;
  }

  LatLng? _locationEst;
  LatLng? get locationEst => _locationEst;
  set locationEst(LatLng? value) {
    _locationEst = value;
  }

  String _pagina = '';
  String get pagina => _pagina;
  set pagina(String value) {
    _pagina = value;
  }

  int _mesaInt = 0;
  int get mesaInt => _mesaInt;
  set mesaInt(int value) {
    _mesaInt = value;
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
