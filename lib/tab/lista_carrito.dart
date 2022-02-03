

import 'package:flutter/material.dart';
import 'package:tags/vista/menu.dart';
import 'package:tags/vista/productos.dart';
class VistaCarrito extends StatefulWidget {
  const VistaCarrito({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<VistaCarrito> createState() => _VistaCarrito();
}
class _VistaCarrito extends State<VistaCarrito>{

@override

   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
         actions: <Widget>[
         IconButton( icon: Icon(Icons.cancel, size:38),
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder:(context)=> 
          VistaProductos(title: widget.title))
          );
         
        },
        )
        ]
      ),
        
      
      body: _body(),
      drawer:VistaMenu(title: widget.title)
    );
  }
Widget _body() {
  return ListView(
    children: [
      _tile('Nombre Producto', 'precio', Icons.shopping_basket),
      const Divider(),
      _tile('Cantidad total','0000', Icons.shopping_cart_rounded),
    ],
  );
}

ListTile _tile(String title, String subtitle, IconData icon) {
  return ListTile(
    title: Text(title,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20,
        )),
    subtitle: Text(subtitle),
    leading: Icon(
      icon,
      color: Colors.green[500],
    ),
  );
}
}