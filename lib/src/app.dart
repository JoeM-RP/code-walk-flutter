import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'blocs/provider.dart';

const title = 'Demo App';

class App extends StatelessWidget {
  build(context) {
    return Provider(
      child: MaterialApp(
        title: 'Code Walk Demo',
        home: Scaffold(
          body: LoginScreen(),
        ),
      ),
    );
  }
}
