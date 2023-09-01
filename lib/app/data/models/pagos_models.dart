import 'dart:convert';
class PagModel{
  final String cantidad;
  final String estado;

  PagModel({
    required this.cantidad,
    required this.estado,

  });
  static PagModel fromJson(Map<String,dynamic>json) => PagModel (
    cantidad: json['cantidad'],
    estado:json ['estado'],

  );
  Map<String,dynamic> toJson() => <String,dynamic>{
    'cantidad': cantidad,
    'estado':estado,

  };
}