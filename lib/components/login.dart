import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0.8, 0.0),
            colors: <Color>[Color(0xff8E2DE2), Color(0xff4A00E0)],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(
                  'https://igd-wp-uploads-pluginaws.s3.amazonaws.com/wp-content/uploads/2016/05/30105213/Qual-e%CC%81-o-Perfil-do-Empreendedor.jpg'),
            ),
            Text(
              "MiCard",
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                  color: Colors.white),
            ),
            Text(
              "business card".toUpperCase(),
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w300),
            ),
            Divider(
              color: Colors.white,
              thickness: 1,
              endIndent: 100,
              indent: 100,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person,
                    color: Color(0xff4A00E0),
                  ),
                  hintText: 'Nome de Usuário',
                  hintStyle: TextStyle(fontSize: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                  contentPadding: EdgeInsets.all(16),
                  fillColor: Colors.white,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              child: TextField(
                keyboardType: TextInputType.text,
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Color(0xff4A00E0),
                  ),
                  hintText: 'Senha',
                  hintStyle: TextStyle(fontSize: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                  contentPadding: EdgeInsets.all(16),
                  fillColor: Colors.white,
                ),
              ),
            ),
            Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              child: ElevatedButton(
                onPressed: () {
                  print('oi');
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.resolveWith(
                    (states) => RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                  ),
                  backgroundColor: MaterialStateProperty.all(Color(0xff8E2DE2)),
                ),
                child: Text(
                  'Entrar',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
