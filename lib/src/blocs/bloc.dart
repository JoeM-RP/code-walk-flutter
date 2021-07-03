import 'dart:async';
import 'validators.dart';
import 'package:rxdart/rxdart.dart';

class Bloc extends Object with Validators {
  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();
  final _codeController = BehaviorSubject<String>();

  // Add data to the stream
  Stream<String> get email => _emailController.stream.transform(validateEmail);
  Stream<String> get password =>
      _passwordController.stream.transform(validatePassword);
  Stream<String> get code => _codeController.stream.transform(validateCode);

  Stream<bool> get submitValid =>
      Observable.combineLatest2(email, password, (e, p) => true);

  // Change data
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  submit() {
    final validEmail = _emailController.value;
    final validPass = _passwordController.value;

    // Pretend this info goes somewhere meaningful at this point
    print('Email is $validEmail');
    print('Password is $validPass');
    // end Pretend
  }

  dispose() {
    _emailController.close();
    _passwordController.close();
    _codeController.close();
  }
}
