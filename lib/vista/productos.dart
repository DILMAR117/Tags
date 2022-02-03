import 'package:flutter/material.dart';
import 'package:tags/main.dart';
import 'package:tags/tab/lista_carrito.dart';
import 'package:tags/tab/vista1.dart';
import 'package:tags/tab/vista2.dart';
import 'package:tags/tab/vista3.dart';
import 'package:tags/vista/menu.dart';

class VistaProductos extends StatefulWidget {
  const VistaProductos({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<VistaProductos> createState() => _ProductoState();
}
class _ProductoState extends State<VistaProductos> with SingleTickerProviderStateMixin {
   late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
   Widget build(BuildContext context) {
     return  Scaffold(
       appBar: AppBar(
         title: Text(widget.title),
         bottom: getTabar(),
       actions: <Widget>[
         IconButton( icon: Icon(Icons.search, size:38),
        onPressed: (){
         
        },
        ),
         IconButton(icon: Icon(Icons.shopping_cart_outlined,size: 38,),
         onPressed: (){
           Navigator.push(context, 
           MaterialPageRoute(builder: (context) => 
           VistaCarrito(title:widget.title))
         ); 
         },
         ),
        
       ]
       ),
       body: getTabarview(<Widget>[
         VistaMascotas('assets/mascota1.jpeg'),
         VistaCollar('assets/collar1.jpeg'),
         VistaLlavero('assets/llavero1.jpeg'),
       ]
          
       ),
       drawer:VistaMenu(title: widget.title)
     );
   }

   TabBar getTabar(){
     return TabBar(
       unselectedLabelColor: Colors.black,
       indicator: BoxDecoration(borderRadius: BorderRadius.circular(50),
       color: Colors.black),
       tabs: [
        Tab(text: 'Mascotas',),
        Tab(text: 'Collares'),
        Tab(text:  'Llaveros'),

       ],
       controller: _controller,
     );
   }
   TabBarView getTabarview(var displays){
     return TabBarView(
       children:displays, 
       controller: _controller,
       );
   }
}