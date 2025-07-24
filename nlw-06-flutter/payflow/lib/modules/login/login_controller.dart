// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:payflow/shared/auth/auth_controller.dart';
import 'package:payflow/shared/models/user_model.dart';

class LoginController {
  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  final AuthController _authController = AuthController();

  // callback para mensagens na interface
  Function(String message, Color color)? onShowMessage;

  // context de navegacao
  BuildContext? _context;

  LoginController({this.onShowMessage});

  // setter para o context
  void setContext(BuildContext context) {
    _context = context;
  }

  // getter para acessar o usuário atual do auth controller
  get currentAuthUser => _authController.user;

  UserModel _convertToUserModel(GoogleSignInAccount account) {
    return UserModel(
      name: account.displayName ?? account.email,
      photoURL: account.photoUrl,
    );
  }

  Future<UserModel?> googleSignIn() async {
    try {
      print('Iniciando Google Sign-In...');

      final GoogleSignInAccount? account = await _googleSignIn.signIn();

      if (account != null) {
        print('Login bem-sucedido!');
        print('Nome: ${account.displayName}');
        print('Email: ${account.email}');
        print('ID: ${account.id}');

        // cria o UserModel a partir dos dados do google
        final UserModel user = _convertToUserModel(account);

        onShowMessage?.call(
          'Login realizado com sucesso!\nBem-vindo, ${user.name}',
          Colors.green,
        );

        // passa UserModel para o auth controller
        if (_context != null) {
          _authController.setUser(_context!, user);
        }

        return user;
      } else {
        print('Login cancelado pelo usuário');
        onShowMessage?.call('Login cancelado', Colors.orange);

        // notifica auth controller: login cancelado
        if (_context != null) {
          _authController.setUser(_context!, null);
        }

        return null;
      }
    } catch (error) {
      print('Erro detalhado no login: $error');
      print('Tipo do erro: ${error.runtimeType}');

      String errorMessage = 'Erro no login: $error';
      onShowMessage?.call(errorMessage, Colors.red);

      // notifica auth controller: logout
      if (_context != null) {
        _authController.setUser(_context!, null);
      }

      return null;
    }
  }

  // verifica se user já está logado
  Future<UserModel?> silentSignIn() async {
    try {
      final GoogleSignInAccount? account = await _googleSignIn.signInSilently();

      if (account != null) {
        final UserModel user = _convertToUserModel(account);

        print('Silent sign-in bem-sucedido: ${user.name}');
        return user;
      }

      return null;
    } catch (error) {
      print('Erro no silent sign-in: $error');
      return null;
    }
  }

  // método para logout
  Future<void> signOut() async {
    try {
      await _googleSignIn.signOut();
      print('Logout realizado com sucesso');
      onShowMessage?.call('Logout realizado', Colors.blue);

      if (_context != null) {
        _authController.setUser(_context!, null);
      }
    } catch (error) {
      print('Erro no logout: $error');
      onShowMessage?.call('Erro no logout: $error', Colors.red);
    }
  }

  // getter para verificar se já está logado
  UserModel? get currentUser {
    final GoogleSignInAccount? account = _googleSignIn.currentUser;

    if (account != null) {
      return _convertToUserModel(account);
    }

    return null;
  }
}
