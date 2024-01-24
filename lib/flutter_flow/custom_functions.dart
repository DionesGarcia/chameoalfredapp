import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

List<String> newCustomFunction(
  String quant,
  String quant2,
) {
  // crie uma lista com a sequencia de numeros entre dois strings
  int start = int.parse(quant);
  int end = int.parse(quant2);
  List<String> result = [];
  for (int i = start; i <= end; i++) {
    result.add(i.toString());
  }
  return result;
}

double virgulaEMponto(String valor) {
  // converta , em .
  return double.parse(valor.replaceAll(',', '.'));
}

int rest(String code) {
  // delete the first 3 characters
  return int.parse(code.substring(3));
}

bool comparalista(
  List<String> lista,
  String item,
) {
  // compare a lista com o item e retorme match
  return lista.contains(item);
}

int mesa(String code) {
  // receba uma string e conserve apenas os 3 primeiros caracteres
  String firstThreeChars = code.substring(0, 3);
  int mesaNumber = int.tryParse(firstThreeChars) ?? 0;
  return mesaNumber;
}

double? distance(
  LatLng? latlon1,
  LatLng? latlon2,
) {
  double lat1 = latlon1!.latitude;
  double lon1 = latlon1.longitude;
  double lat2 = latlon2!.latitude;
  double lon2 = latlon2.longitude;
  var p = 0.017453292519943295;
  var c = math.cos;
  var a = 0.5 -
      c((lat2 - lat1) * p) / 2 +
      c(lat1 * p) * c(lat2 * p) * (1 - c((lon2 - lon1) * p)) / 2;
  // Returns distance in Kilo-meters
  var d = (12742 * math.asin(math.sqrt(a)));
  String inString = d.toStringAsFixed(2); // '2.35'
  double inDouble = double.parse(inString);
  return inDouble;
}

LatLng? coordenada(
  String? lat,
  String? long,
) {
  // pegue as duas strings e transforme em uma coordenada
  if (lat == null || long == null) {
    return null;
  }
  final latitude = double.tryParse(lat);
  final longitude = double.tryParse(long);
  if (latitude == null || longitude == null) {
    return null;
  }
  return LatLng(latitude, longitude);
}

LatLng? cooedenada2(String? cooedenada) {
  // retire apenas numeros
  if (cooedenada == null) return null;
  final regex = RegExp(r'[^\d.,-]');
  final cleanString = cooedenada.replaceAll(regex, '');
  final coordinates = cleanString.split(',');
  if (coordinates.length != 2) return null;
  final latitude = double.tryParse(coordinates[0]);
  final longitude = double.tryParse(coordinates[1]);
  if (latitude == null || longitude == null) return null;
  return LatLng(latitude, longitude);
}

String? cordString(LatLng? string) {
  // pegue uma coordenada e transorme em string
  if (string == null) return null;
  return '${string.latitude},${string.longitude}';
}

LatLng? stringCoord(String? string) {
  // transforme a string em coordenada
  if (string == null) return null;
  final parts = string.split(',');
  if (parts.length != 2) return null;
  final lat = double.tryParse(parts[0]);
  final lng = double.tryParse(parts[1]);
  if (lat == null || lng == null) return null;
  return LatLng(lat, lng);
}
