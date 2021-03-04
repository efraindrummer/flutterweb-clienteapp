import 'package:flutter/material.dart';

mostrarAlerta(BuildContext context, String titulo, String mensaje){
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) => AlertDialog(
      title: Text(titulo, style: TextStyle(fontWeight: FontWeight.bold),),
      content: Text(mensaje),
      actions: [
        MaterialButton(
          child: Text('Ok'.toUpperCase(), style: TextStyle(fontSize: 22),),
          color: Colors.black,
          onPressed: () => Navigator.of(context).pop(),
        )
      ],
    )
  );
}