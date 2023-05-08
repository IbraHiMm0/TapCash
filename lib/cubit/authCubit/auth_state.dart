import 'package:demo/models/authModel/auth_model.dart';

abstract class AuthState{}

class InitialState extends AuthState{}
class LoadingState extends AuthState{}
class SuccessState extends AuthState{
  final AuthModel authModel;
  SuccessState(this.authModel);
}
class ErrorState extends AuthState{
  final String erorr;
  ErrorState(this.erorr);
}

class ChangePassState extends AuthState{}

