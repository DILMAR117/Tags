
import 'package:flutter/material.dart';
import 'package:tags/vista/menu.dart';


class VistaInicio extends StatefulWidget {
  const VistaInicio({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<VistaInicio> createState() => _InicioState();
}
class _InicioState extends State<VistaInicio> {
  
  @override
   Widget build(BuildContext context) {
     return  Scaffold(
       appBar: AppBar(
         title: Text(widget.title),
       

       actions: <Widget>[
         IconButton(icon: Icon(Icons.settings,size: 30,),
         onPressed: (){},)
       ]
       ),
       body:Center(child:Text('BIENVENIDO')
       ),
       drawer:VistaMenu(title: widget.title)
     );
   }
}