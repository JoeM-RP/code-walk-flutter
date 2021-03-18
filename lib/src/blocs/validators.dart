import 'dart:async';

class Validators {
  final validateEmail =
      StreamTransformer<String, String>.fromHandlers(handleData: (email, sink) {
    // A crude email validator that 'technically' satisfies the requirements :)
    if (email.contains('@') && email.contains('.')) {
      sink.add(email);
    } else {
      sink.addError('Please provide a valid email');
    }
  });

  final validatePassword = StreamTransformer<String, String>.fromHandlers(
      handleData: (password, sink) {
    if (password.length > 3) {
      sink.add(password);
    } else {
      sink.addError('Please provide a password');
    }
  });
}
