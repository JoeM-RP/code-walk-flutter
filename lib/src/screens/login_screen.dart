import 'package:demo/src/app.dart';
import 'package:flutter/material.dart';
import '../blocs/bloc.dart';
import '../blocs/provider.dart';

class LoginScreen extends StatelessWidget {
  // Main Widget
  Widget build(context) {
    final bloc = Provider.of(context);

    // FIXTHIS - SafeArea
    return Container(
        margin: EdgeInsets.all(28.0),
        child: Column(children: [
          titleField(),
          emailField(bloc),
          passwordField(bloc),
          Container(margin: EdgeInsets.only(top: 28.0)),
          submitButton(bloc),
        ]));
  }

  // Title Field
  Widget titleField() {
    return Text(
      'Hello, Code Walk!',
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
                hintText: 'you@example.com', // FIXTHIS - final
                labelText: 'Email Address',
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
            obscureText: false, // FIXTHIS - boolean value
            decoration: InputDecoration(
                hintText: 'Password',
                labelText: 'Password', // FIXTHIS - final
                errorText: snapshot.error),
          );
        });
  }

  // Log In Button
  Widget submitButton(Bloc bloc) {
    return StreamBuilder(
        stream: bloc.submitValid,
        builder: (context, snapshot) {
          return ButtonTheme(
            minWidth: double.infinity,
            child: RaisedButton(
              // FIXTHIS - RaisedButton
              child: Text('Log In'),
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: snapshot.hasData ? bloc.submit() : null,
            ),
          );
        });
  }
}
