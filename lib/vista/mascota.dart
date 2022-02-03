import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:tags/vista/menu.dart';
import 'package:tags/vistas_obj_masc/mapa_mascota.dart';

class VistaMascota extends StatefulWidget {
  const VistaMascota({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<VistaMascota> createState() => _MascotaState();
}
class _MascotaState extends State<VistaMascota> {
   final _formKey =GlobalKey<FormState>();

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
         Text('Agregar Mascota', style: TextStyle(fontSize: 15,color: Colors.white, fontWeight: FontWeight.bold),)
       ],
       )
       ),
        ),
        InkWell(onTap: (){
           Navigator.of(context).push(MaterialPageRoute(builder:
           (BuildContext context)=>VistaMapa(title: widget.title))
           );

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
             Icon(Icons.pets, size: 40, color: Colors.white,),
             Text('Mascotas', style: TextStyle(fontSize: 15,color: Colors.white, fontWeight: FontWeight.bold),)
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