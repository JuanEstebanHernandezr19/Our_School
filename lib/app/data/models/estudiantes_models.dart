

class estudiantesmodel {
  final String tipo_Documento;
  final int numero_Documento;
  final String nombre;
  final String apellido;
  final String fecha_Nacimiento;
  final int celular;
  final String correo;
  final String grado;


  const estudiantesmodel( {
    required this.tipo_Documento,
    required this.numero_Documento,
  required this.nombre,
  required this.apellido,
  required this.fecha_Nacimiento,
  required this.celular,
  required this.correo,
  required this.grado,

});

  static estudiantesmodel fromJson (Map<String,dynamic>json) => estudiantesmodel(
    tipo_Documento: json['tipo_Documento'],
    numero_Documento: json ['documento'],
    nombre: json['nombre'],
    apellido: json['apellido'],
    fecha_Nacimiento: json['fecha_nacimiento'],
    celular: json['celular'],
    correo: json['correo'],
    grado: json['grado'],

  );
  Map<String,dynamic> toJson() => <String,dynamic>{
    'documento':numero_Documento,
    'tipo_Documento':tipo_Documento,
    'nombre':nombre,
    'apellido':apellido,
    'fecha_nacimiento':fecha_Nacimiento,
    'celular':celular,
    'correo':correo,
    'grado':grado
  };
}