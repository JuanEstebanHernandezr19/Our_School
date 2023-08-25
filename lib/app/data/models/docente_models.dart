

class docentemodel {
  final String nombre_apellidos;
  final String telefono;
  final String correo;
  final String certificados;


  const docentemodel({
    required this.nombre_apellidos,
    required this.telefono,
    required this.correo,
    required this.certificados,

  });
  static docentemodel fromJson (Map<String,dynamic>json) => docentemodel(
      nombre_apellidos:  json['nombre_apellidos'],
      telefono:  json['telefono'],
      correo:  json['correo'],
      certificados:  json['certificados'],
  );
  Map<String,dynamic> toJson() => <String,dynamic>{
    'nombre_apellidos':nombre_apellidos,
    'telefono':telefono,
    'correo':correo,
    'certificados':certificados,




  };
}