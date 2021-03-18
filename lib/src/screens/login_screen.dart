import 'package:flutter/material.dart';
import '../blocs/bloc.dart';
import '../blocs/provider.dart';

class LoginScreen extends StatelessWidget {
  // Constants
  final title = 'Hello, Code Walk!';

  final passwordFieldLabel = 'Password';
  final passwordFieldHint = 'Password';

  final emailFieldLabel = 'Email Address';
  final emailFieldHint = 'you@example.com';

  final submitButtonText = 'Log In';

  // Main Widget
  Widget build(context) {
    final bloc = Provider.of(context);
    return SafeArea(
      child: Container(
        margin: EdgeInsets.all(28.0),
        child: Column(children: [
          titleField(),
          emailField(bloc),
          passwordField(bloc),
          Container(margin: EdgeInsets.only(top: 28.0)),
          submitButton(bloc),
        ]),
      ),
    );
  }

  // Title Field
  Widget titleField() {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
    );
  }

  // Email Field
  Widget emailField(Bloc bloc) {
    return StreamBuilder(
        stream: bloc.email,
        builder: (context, snapshot) {
          return TextField(
            onChanged: bloc.changeEmail,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                hintText: emailFieldHint,
                labelText: emailFieldLabel,
                errorText: snapshot.error),
          );
        });
  }

  // Password Field
  Widget passwordField(Bloc bloc) {
    return StreamBuilder(
        stream: bloc.password,
        builder: (context, snapshot) {
          return TextField(
            onChanged: bloc.changePassword,
            obscureText: true,
            decoration: InputDecoration(
                hintText: passwordFieldHint,
                labelText: passwordFieldLabel,
                errorText: snapshot.error),
          );
        });
  }

  // Log In Button
  Widget submitButton(Bloc bloc) {
    return StreamBuilder(
        stream: bloc.submitValid,
        builder: (context, snapshot) {
          return ConstrainedBox(
            constraints: BoxConstraints.tightFor(width: double.infinity),
            child: ElevatedButton(
              child: Text(submitButtonText),
              onPressed: snapshot.hasData ? () => bloc.submit() : null,
            ),
          );
        });
  }
}
