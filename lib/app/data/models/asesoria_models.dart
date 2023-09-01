class AseModel{
  final String materia;
  final String grado;
  final String duracion;
  final String resenas;

  AseModel({
    required this.materia,
    required this.grado,
    required this.duracion,
    required this.resenas,

  });

  static AseModel fromJson(Map<String,dynamic>json) => AseModel (
    materia: json['materia'],
    grado:json ['grado'],
    duracion: json['duracion'],
    resenas: json['resenas'],
  );
  Map<String,dynamic> toJson() => <String,dynamic>{
    'materia': materia,
    'grado':grado,
    'duracion': duracion,
    'resenas': resenas,

  };
}