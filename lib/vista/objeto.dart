

import 'package:flutter/material.dart';
import 'package:tags/vista/menu.dart';
import 'package:tags/vistas_obj_masc/mapa_objetos.dart';


class VistaObjeto extends StatefulWidget {
  const VistaObjeto({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<VistaObjeto> createState() => _ObjetoState();
}
class _ObjetoState extends State<VistaObjeto> {
   final _formKey =GlobalKey<FormState>();
  String _nombre= "";
  int _temperatura= 0;

  @override

   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      
      body: _body(),
      drawer:VistaMenu(title: widget.title)
    );
  }
  

  Widget _body() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: GridView(children: [
        InkWell(
          onTap: (){

          },
        
        child:Container( decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.red),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
         children:[
         Icon(Icons.add,size: 40, color: Colors.white,),
         Text('Agregar Objeto', style: TextStyle(fontSize: 15,color: Colors.white, fontWeight: FontWeight.bold),)
       ],
       )
       ),
        ),
        InkWell(onTap: (){
         Navigator.of(context).push(MaterialPageRoute(
           builder: (BuildContext context)=> VistaMapaObj(title: widget.title)));

        },
           child:Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.yellow),
           child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
             children:[
             Icon(Icons.map ,size: 40, color: Colors.white,),
             Text('Ubicar', style: TextStyle(fontSize: 15,color: Colors.white, fontWeight: FontWeight.bold),)
            ],
          )
       ),
      ),
      InkWell(
        onTap:(){

        },
         child:  Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
            children:[
             Icon(Icons.emoji_objects,size: 40, color: Colors.white,),
             Text('Objetos', style: TextStyle(fontSize: 15,color: Colors.white, fontWeight: FontWeight.bold),)
            ],
          )
      ),
      ),
      InkWell(onTap: () {
        
           },
         child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey),
         child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
             Icon(Icons.notification_add, size: 40, color: Colors.white,),
             Text('Sonido de Alerta', style: TextStyle(fontSize: 15,color: Colors.white, fontWeight: FontWeight.bold),)
           ],
         ),
       ),
      ),
     ],
       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2, mainAxisSpacing: 20, crossAxisSpacing: 10 ),
     ),
   
    );
    
         
   }

 
}