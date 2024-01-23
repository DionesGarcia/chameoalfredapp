import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
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
  set token(String _value) {
    _token = _value;
    prefs.setString('ff_token', _value);
  }

  int _restauranteID = 0;
  int get restauranteID => _restauranteID;
  set restauranteID(int _value) {
    _restauranteID = _value;
    prefs.setInt('ff_restauranteID', _value);
  }

  int _userID = 0;
  int get userID => _userID;
  set userID(int _value) {
    _userID = _value;
    prefs.setInt('ff_userID', _value);
  }

  String _tipoUser = '';
  String get tipoUser => _tipoUser;
  set tipoUser(String _value) {
    _tipoUser = _value;
  }

  String _nomeUser = '';
  String get nomeUser => _nomeUser;
  set nomeUser(String _value) {
    _nomeUser = _value;
  }

  double _cover = 0.0;
  double get cover => _cover;
  set cover(double _value) {
    _cover = _value;
  }

  double _taxa = 0.0;
  double get taxa => _taxa;
  set taxa(double _value) {
    _taxa = _value;
  }

  double _embalagem = 0.0;
  double get embalagem => _embalagem;
  set embalagem(double _value) {
    _embalagem = _value;
  }

  String _nomeRstaurante = '';
  String get nomeRstaurante => _nomeRstaurante;
  set nomeRstaurante(String _value) {
    _nomeRstaurante = _value;
    prefs.setString('ff_nomeRstaurante', _value);
  }

  String _mesa = '';
  String get mesa => _mesa;
  set mesa(String _value) {
    _mesa = _value;
  }

  LatLng? _locationUser;
  LatLng? get locationUser => _locationUser;
  set locationUser(LatLng? _value) {
    _locationUser = _value;
  }

  LatLng? _locationEst;
  LatLng? get locationEst => _locationEst;
  set locationEst(LatLng? _value) {
    _locationEst = _value;
  }

  String _pagina = '';
  String get pagina => _pagina;
  set pagina(String _value) {
    _pagina = _value;
  }

  int _mesaInt = 0;
  int get mesaInt => _mesaInt;
  set mesaInt(int _value) {
    _mesaInt = _value;
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
