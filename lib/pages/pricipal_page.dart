import 'package:flutter/material.dart';

class PrincipalPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Bienvenido", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        elevation: 1,
        actions: [
          MaterialButton(
            onPressed: (){
              Navigator.of(context).pushReplacementNamed('login');
            },
            elevation: 1,
            child: Row(
              children: [
                Icon(Icons.close, color: Colors.white),
                Text("Salir", style: TextStyle(
                  color: Colors.white,
                  fontSize: 16
                )),
              ],
            ),
          )
        ],
      ),
      drawer: _menu(),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              Color(0xFF000428),
              Color(0xFF004e92)
            ]
          )
        ),
        child: ListView(
          padding: EdgeInsets.all(30),
          children: <Widget>[
            _card(),
            SizedBox(height: 20),
            _card(),
            SizedBox(height: 20),
            _card(),
            SizedBox(height: 20),
            _card(),
            SizedBox(height: 20),
            _card(),
            SizedBox(height: 20),
            _card(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Drawer _menu() {
    return Drawer(
      elevation: 10,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
              color: Colors.blueAccent,
            ),
          ),
          ListTile(
            leading: Icon(Icons.person, color: Colors.blueAccent,),
            title: Text("Usuarios"),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.chat, color: Colors.blueAccent,),
            title: Text("Chat"),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.add, color: Colors.blueAccent,),
            title: Text("Altas"),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.delete, color: Colors.blueAccent,),
            title: Text("Bajas"),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.update, color: Colors.blueAccent,),
            title: Text("Modificacion"),
            onTap: (){},
          )
        ],
      ),
    );
  }

  Widget _card() {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Image(
              image: NetworkImage('https://miro.medium.com/max/1400/0*4HwLJ2PmDnbmpZNK.jpeg'),
            ),
            title: Text("Hola mi nombre es Efrain May, Desarrollador Flutter".toUpperCase()),
            subtitle: Text("Actualmente me enfoco en la creacion de apps moviles en flutter, diseño web con html, css & js pero tambien en mis ratos libre me gusta programagar en Angular"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: (){}, 
                child: Text('Cancelar')
              ),
              TextButton(
                onPressed: (){}, 
                child: Text('Ok')
              ),
            ],
          )
        ],
      ),
    );
  }
}