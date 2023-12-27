// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:hora_marcada/core/features/login/domain/entities/user_entity.dart';

class UserLoginModel extends Usuario {
  final String uid;
  final String nome;
  final String email;

  const UserLoginModel(
      {required this.uid, required this.nome, required this.email});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uid': uid,
      'nome': nome,
      'email': email,
    };
  }

  factory UserLoginModel.fromMap(Map<String, dynamic> map) {
    return UserLoginModel(
        uid: map['uid'], nome: map['name'], email: map['email']);
  }

  String toJson() => json.encode(toMap());

  factory UserLoginModel.fromJson(String source) =>
      UserLoginModel.fromMap(json.decode(source) as Map<String, dynamic>);

  factory UserLoginModel.fromFirebaseUser(User firebaseUser) {
    return UserLoginModel(
      uid: firebaseUser.uid,
      nome: firebaseUser.displayName ?? '',
      email: firebaseUser.email ?? '',
    );
  }
}
