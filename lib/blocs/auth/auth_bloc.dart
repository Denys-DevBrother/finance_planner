import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

import 'package:firebase_core/firebase_core.dart';

part 'auth_event.dart';
part 'auth_state.dart';

AuthBloc authBloc = AuthBloc();

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthLoginEvent>(_authLogin);
    on<AuthLogOutEvent>(_authLogOut);
    on<AuthRegisterEvent>(_authRegister);
  }

  FirebaseAuth auth = FirebaseAuth.instance;

  FutureOr<void> _authLogin(AuthLoginEvent event, Emitter<AuthState> emit) async {
    try {
      final UserCredential userCredential = await auth.signInWithEmailAndPassword(
        email: event.email,
        password: event.password,
      );
    } catch (e) {
      // print(e.toString());
    }

    emit(AuthLoginState());
  }

  FutureOr<void> _authLogOut(AuthLogOutEvent event, Emitter<AuthState> emit) async {
    await auth.signOut();
    emit(AuthUnLoginState());
  }

  FutureOr<void> _authRegister(AuthRegisterEvent event, Emitter<AuthState> emit) async {
    final UserCredential userCredential = await auth.createUserWithEmailAndPassword(
      email: event.email,
      password: event.password,
    );

    // print(userCredential.user!.uid);
    emit(AuthLoginState());
  }
}
