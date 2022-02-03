import 'package:flutter/material.dart';
import 'package:tags/vista/mascota.dart';
import 'package:tags/vista/registrousuario.dart';

class VistaMascotas extends StatelessWidget{
  final img;

  VistaMascotas(this.img);
   Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text(widget.title),
      ),
      */
      body: _body(),
    );
  }
  
  Widget _body(){
    return Container(
      padding: EdgeInsets.all(20),
      child: GridView(children: [
        InkWell(
          onTap: (){

          },
        
        child:Container( decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.green),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
         children:[
         Image.asset(img, alignment:Alignment.center,width: 400,),
         Padding(padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0)),
         Icon(Icons.shopping_cart,size: 20, color: Colors.white,),
         Text("Precio: 200", style: TextStyle(fontSize: 15,color: Colors.white, fontWeight: FontWeight.bold),)
       ],
       )
       ),
        ),
         InkWell(
          onTap: (){

          },
        
        child:Container( decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.green),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
         children:[
         Image.asset('assets/mascota2.jpeg', alignment:Alignment.center,width: 400,),
         Padding(padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0)),
         Icon(Icons.shopping_cart,size: 20, color: Colors.white,),
         Text("Precio: 200", style: TextStyle(fontSize: 15,color: Colors.white, fontWeight: FontWeight.bold),)
       ],
       )
       ),
        ),
       InkWell(
          onTap: (){

          },
        
        child:Container( decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.green),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
         children:[
         Image.asset('assets/mascota3.jpeg', alignment:Alignment.center,width: 400,),
         Padding(padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0)),
         Icon(Icons.shopping_cart,size: 20, color: Colors.white,),
         Text("Precio: 200", style: TextStyle(fontSize: 15,color: Colors.white, fontWeight: FontWeight.bold),)
       ],
       )
       ),
        ),
       InkWell(
          onTap: (){

          },
        
        child:Container( decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.green),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
         children:[
         Image.asset('assets/mascota4.jpeg', alignment:Alignment.center,width: 400,),
         Padding(padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0)),
         Icon(Icons.shopping_cart,size: 20, color: Colors.white,),
         Text("Precio: 200", style: TextStyle(fontSize: 15,color: Colors.white, fontWeight: FontWeight.bold),)
       ],
       )
       ),
        ),
     ],
       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2, mainAxisSpacing: 20, crossAxisSpacing: 10 ),
     ),
   
    );
  }
 
}