import 'dart:ffi';

class UsuarioModel{
  final Int id_usuario;
  final String nome;
  final String email;
  final String senha;
  final String tipo;
  final String img_usuario;
  final String dt_nascimento;

  UsuarioModel({required this.id_usuario, required this.nome, required this.email, required this.senha, required this.tipo, required this.img_usuario, required this.dt_nascimento});  
}