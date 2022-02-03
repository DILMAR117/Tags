

import 'package:flutter/material.dart';
import 'package:tags/main.dart';
import 'package:tags/tab/lista_carrito.dart';
import 'package:tags/tab/lista_venta.dart';
import 'package:tags/vista/conectar.dart';
import 'package:tags/vista/mascota.dart';
import 'package:tags/vista/objeto.dart';
import 'package:tags/vista/productos.dart';
class VistaMenu extends StatefulWidget {
  const VistaMenu({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<VistaMenu> createState() => _MenuState();
}

class _MenuState extends State<VistaMenu>{
  String _usuario ="Dilmar Gonzalez Hernandez";
  @override
  Widget build(BuildContext context) {
    return Drawer( 
      child: ListView(
        padding: EdgeInsets.zero,
        children:<Widget> [
          _buildDrawerHeader(),
          /*ListTile(
            leading: Icon(Icons.location_on, color: Colors.black, size: 32,),
            title: Text('Tags', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),),
            onTap: () => Navigator.of(context).pop(),
          ),
          */ 
          ListTile(
            leading: Icon(Icons.pets, color: Colors.black, size: 15,),
            title: Text('Mascota', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
               MaterialPageRoute(
                 builder: (BuildContext context) => VistaMascota(title: widget.title)
                 )
              );
              
            }
          ),
          ListTile(
            leading: Icon(Icons.emoji_objects_rounded,color:Colors.black, size: 15,),
            title: Text('Objeto', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),),
            onTap: () {
               Navigator.of(context).pop();
              Navigator.of(context).push(
              MaterialPageRoute(
              builder: (BuildContext context)=> VistaObjeto(title: widget.title)
              )
              );
             
            }
          ),
          
          ListTile(
            leading: Icon(Icons.bluetooth, color:Colors.black, size: 15,),
            title: Text('Conectar', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context)=> VistaConectar(title:widget.title))
              );
            }
          ),
             Divider(color: Colors.green, thickness: 1,),
          ListTile(
            leading: Icon(Icons.list, color: Colors.black, size: 15,),
            title: Text('Productos', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),),
            onTap: () { Navigator.of(context).pop();
              Navigator.of(context).push(
               MaterialPageRoute(
                 builder: (BuildContext context) => VistaProductos(title: widget.title)
                 )
              );
              
            }
          ),
          ListTile(
            leading: Icon(Icons.bar_chart, color:Colors.black, size: 15,),
            title: Text('Reportes', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
              MaterialPageRoute(
              builder: (BuildContext context)=>VistaCarrito(title: widget.title)
              )
              );
              
            }
          ),
          Divider(color: Colors.green, thickness: 1,),
          ListTile(
            leading: Icon(Icons.close, color:Colors.black, size: 15,),
            title: Text('Cierre de Sesion', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),),
            onTap: () {
              SnackBar snackBar = SnackBar(content: Text('Serrando sesion', style: TextStyle(color: Colors.white, 
              fontSize: 20, fontWeight: FontWeight.bold),
              ),duration: Duration(seconds: 2),
              backgroundColor: Colors.red,
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
              Navigator.of(context).pop();
              Navigator.of(context).push(
              MaterialPageRoute(
              builder: (BuildContext context) => MyHomePage(title: widget.title)
                 )
              );
            }
          ),
        ],
      ),
    );
}
Widget _buildDrawerHeader(){
 return DrawerHeader(
     margin: EdgeInsets.zero,
     padding: EdgeInsets.zero,
     decoration: BoxDecoration(
      color: Colors.green
      ),
     child: Stack(children: <Widget>[
       Container(
         padding: EdgeInsets.only(top: 60),
             child: ListTile(
             leading: Icon(Icons.person, size:50, color: Colors.white),
             title:Text ('Bienvenido',style: TextStyle(fontSize: 38, color: Colors.white, 
                     fontWeight: FontWeight.bold),
                ),
             subtitle: Text(_usuario, style: TextStyle(fontSize: 15, color:Colors.white,
               ),
              ),
              onTap: (){},
             )
            ),
     ]
     )
     );
             
}
}