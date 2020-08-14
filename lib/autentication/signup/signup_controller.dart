import 'package:flutter/cupertino.dart';
import 'package:pave/autentication/login/login.dart';
import 'package:pave/repositories/auth_repository.dart';

class SignUpController {
  final _formKey = GlobalKey<FormState>();

  final _tffcName = TextEditingController();
  final _tffcEmail = TextEditingController();
  final _tffcPassword = TextEditingController();
  final _tffcPasswordConfirm = TextEditingController();

  var _enumTypeRegisterButton = 'Cadastrar';

  final AuthRepository _auth = AuthRepository();

  get formKey => this._formKey;
  get tffcName => this._tffcName;
  get tffcEmail => this._tffcEmail;
  get tffcPassword => this._tffcPassword;
  get tffcPasswordConfirm => this._tffcPasswordConfirm;
  get enumTypeRegisterButton => this._enumTypeRegisterButton;
  set enumTypeRegisterButton(enumTypeRegisterButton) =>
      this._enumTypeRegisterButton = enumTypeRegisterButton;

  Future register(void Function(String) changeEnumTypeRegisterButton) async {
    changeEnumTypeRegisterButton('CARREGANDO...');
    await _auth.signUpEmailAndPassword(
      email: _tffcEmail.text,
      password: _tffcPassword.text,
    );
    changeEnumTypeRegisterButton('REGISTRAR');
  }
}
