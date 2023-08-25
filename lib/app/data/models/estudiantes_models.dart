

class estudiantesmodel {
  final String nombre;
  final String apellido;
  final String fecha_Nacimiento;
  final int celular;
  final String correo;
  final String grado;


  const estudiantesmodel({
  required this.nombre,
  required this.apellido,
  required this.fecha_Nacimiento,
  required this.celular,
  required this.correo,
  required this.grado,

});

  static estudiantesmodel fromJson (Map<String,dynamic>json) => estudiantesmodel(
    nombre: json['nombre'],
    apellido: json['apellido'],
    fecha_Nacimiento: json['fecha_nacimiento'],
    celular: json['celular'],
    correo: json['correo'],
    grado: json['grado'],
  );
  Map<String,dynamic> toJson() => <String,dynamic>{
    'nombre':nombre,
    'apellido':apellido,
    'fecha_nacimiento':fecha_Nacimiento,
    'celular':celular,
    'correo':correo,
    'grado':grado
  };
}