import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          shadowColor: Colors.blue,
          title: _logo(),
          actions: [
            _botonSitioPrincipal(),
          ],
        ),
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _login(),
              _imagen(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _logo() {
    return Container(
      margin: EdgeInsets.only(top: 7.0),
      child: Image(
        image: AssetImage('logo_blanco.png'),
        height: 100,
      ),
    );
  }

  Widget _botonSitioPrincipal() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        children: [
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100.0),
              child: RaisedButton(
                color: Colors.deepPurple[300],
                textColor: Colors.white,
                child: Text("Sítio principal"),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _login() {
    return Flexible(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.3,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("empresa_logo.jpg"),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50.0, bottom: 50.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Correo:"),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Ingrese su correo",
                      suffixIcon: Icon(
                        Icons.email,
                        color: Color.fromRGBO(156, 23, 144, 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.deepPurpleAccent,
                          width: 2.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.deepPurpleAccent[100], width: 1.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 25.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Contraseña:"),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Ingrese su contraseña",
                      suffixIcon: Icon(
                        Icons.lock,
                        color: Color.fromRGBO(156, 23, 144, 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.deepPurpleAccent,
                          width: 2,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.deepPurpleAccent[100], width: 1.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: RaisedButton(
                  color: Colors.deepPurple[300],
                  textColor: Colors.white,
                  child: Text("Recuperar contraseña"),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _imagen() {
    return Flexible(
      child: Center(
        child: Image(
          image: AssetImage("red_puntos2.png"),
        ),
      ),
    );
  }
}
