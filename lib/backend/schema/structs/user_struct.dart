// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends BaseStruct {
  UserStruct({
    String? nome,
    String? email,
    int? tipo,
    String? restaurante,
  })  : _nome = nome,
        _email = email,
        _tipo = tipo,
        _restaurante = restaurante;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;
  bool hasNome() => _nome != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;
  bool hasEmail() => _email != null;

  // "tipo" field.
  int? _tipo;
  int get tipo => _tipo ?? 0;
  set tipo(int? val) => _tipo = val;
  void incrementTipo(int amount) => _tipo = tipo + amount;
  bool hasTipo() => _tipo != null;

  // "restaurante" field.
  String? _restaurante;
  String get restaurante => _restaurante ?? '';
  set restaurante(String? val) => _restaurante = val;
  bool hasRestaurante() => _restaurante != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        nome: data['nome'] as String?,
        email: data['email'] as String?,
        tipo: castToType<int>(data['tipo']),
        restaurante: data['restaurante'] as String?,
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'nome': _nome,
        'email': _email,
        'tipo': _tipo,
        'restaurante': _restaurante,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'tipo': serializeParam(
          _tipo,
          ParamType.int,
        ),
        'restaurante': serializeParam(
          _restaurante,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        tipo: deserializeParam(
          data['tipo'],
          ParamType.int,
          false,
        ),
        restaurante: deserializeParam(
          data['restaurante'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct &&
        nome == other.nome &&
        email == other.email &&
        tipo == other.tipo &&
        restaurante == other.restaurante;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([nome, email, tipo, restaurante]);
}

UserStruct createUserStruct({
  String? nome,
  String? email,
  int? tipo,
  String? restaurante,
}) =>
    UserStruct(
      nome: nome,
      email: email,
      tipo: tipo,
      restaurante: restaurante,
    );
