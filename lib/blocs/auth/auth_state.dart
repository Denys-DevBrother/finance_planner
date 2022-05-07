part of 'auth_bloc.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoginState extends AuthState {}

class AuthUnLoginState extends AuthState {}
