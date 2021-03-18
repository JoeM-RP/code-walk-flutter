import 'dart:async';
import 'validators.dart';
import 'package:rxdart/rxdart.dart';

class Bloc extends Object with Validators {
  final _emailController = BehaviorSubject<String>();
  final passwordController = BehaviorSubject<String>(); // FIXTHIS - private

  // Add data to the stream
  Stream<String> get email => _emailController.stream.transform(validateEmail);
  Stream<String> get password =>
      passwordController.stream.transform(validatePassword);
  Stream<bool> get submitValid =>
      Observable.combineLatest2(email, password, (e, p) => true);

  // Change data
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => passwordController.sink.add;

  submit() {
    final validEmail = _emailController.value;
    final validPass = passwordController.value;

    // Pretend this info goes somewhere meaningful at this point
    print('Auth success, probably');
    // end Pretend
  }

  dispose() {
    _emailController.close();
    passwordController.close();
  }
}
