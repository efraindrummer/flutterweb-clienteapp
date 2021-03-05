import 'package:clientes_app/widgets/alert.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF004e92),
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.transparent,
        title: Text(
          "Bienvenidos".toUpperCase(), 
          style: TextStyle(
            fontWeight: FontWeight.bold, 
            color: Colors.white, 
            fontSize: 24
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.admin_panel_settings, color: Colors.white), 
            onPressed: (){
              mostrarAlerta(context, "Este sitio es completamente seguro".toUpperCase(), "Por favor registrate o inicia sesion para continuar");
            }
          ),
          IconButton(
            icon: Icon(Icons.mobile_friendly_outlined, color: Colors.white), 
            onPressed: (){
              mostrarAlerta(context, "Instala esta aplicacion en tus dispositivos".toUpperCase(), "Disponible para Windows, Mac, Linux, Android & IOS");
            }
          )
        ],
      ),
      body: Stack(
        children: <Widget>[
          _crearFondo(context),
          _loginForm(context),
        ],
      )
    );
  }

  Widget _crearFondo(BuildContext context) {

    final size = MediaQuery.of(context).size;

    final fondoGradiente = Container(
      height: size.height * 0.4,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            Color.fromRGBO(242, 153, 74, 1.0),
            Color.fromRGBO(242, 201, 76, 1.0)
          ]
        )
      ),
    );

    return Stack(
      children: [
        fondoGradiente,
        Container(
          padding: EdgeInsets.only(top: 50),
          child: Column(
            children: <Widget>[
              Icon(
                Icons.supervised_user_circle, 
                color: Colors.white, 
                size: 100
              ),
              SizedBox(height: 15, width: double.infinity,), 
              Text(
                "Iniciar Sesion".toUpperCase(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget _loginForm(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SafeArea(
            child: Container(
              height: 220.0,
            )
          ),
          Container(
            width: size.width * 0.90,
            padding: EdgeInsets.symmetric(vertical: 20.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black38,
                  blurRadius: 8.0,
                  offset: Offset(3.0, 8.0),
                  spreadRadius: 5.0
                )
              ]
            ),
            child: Column(
              children: [
                Text('Ingresa Ahora!', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                SizedBox(height: 40),
                Text("Ingresa tu correo electronico"),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      icon: Icon(Icons.email_outlined, color: Colors.black,),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "correo@correo.com",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))
                      )
                    ),
                  )
                ),
                SizedBox(height: 5),
                Text("Ingresa tu contraseña"),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextField(
                    obscureText: true,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock, color: Colors.black,),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Contraseña",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      )
                    ),
                  )
                ),
                SizedBox(height: 20),
                MaterialButton(
                  padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                  minWidth: 300,
                  height: 50,
                  child: Text("Ingresar".toUpperCase(), style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  )),
                  elevation: 1,
                  color: Color(0xFF004e92),
                  onPressed: (){
                    Navigator.pushNamed(context, 'principal');
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          GestureDetector(
            onTap: (){},
            child: Text(
              "¿Olvido su contraseña?", 
              style: TextStyle(color: Colors.white)
            )
          )
        ],
      ),
    );
  }
}