
import 'package:flutter/material.dart';

import '../main.dart';

class VistaRegistroUsuario extends StatefulWidget {
  const VistaRegistroUsuario({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<VistaRegistroUsuario> createState() => _RegistroUsuarioState();
}

class _RegistroUsuarioState extends State<VistaRegistroUsuario> {
  final _formKey =GlobalKey<FormState>();
  String _nombre= "";
  String _correo= "";
  String _usuario= "";
  String _contra = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text(widget.title),
      ),
      */
      body:SingleChildScrollView(child: _body()),
    );
  }
  Widget _body(){ 
    return Form(
    child: Container(
    child:Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _textLogin(),
          _txtUsuario(),
          _txtContra(),
          _txtNombre(),
          _txtCorreo(),
          _botonRegistrar(),
          _botonRegresar()
        ],
      ),
      ),
      key: _formKey,
      );
  }
  Widget _textLogin(){
    return Stack(
    children: <Widget> [
      Container(
      padding: EdgeInsets.fromLTRB(15.0, 175.0, 0.0, 0.0),
    child:Text('Registrate',
    style: TextStyle(
      fontSize: 50.0, fontWeight: FontWeight.bold
    ),
    ),
    ),
    Container(
    padding: EdgeInsets.fromLTRB(247.0, 153.0, 0.0, 0.0),
    child:Text('.',
    style: TextStyle(
      fontSize: 80.0, fontWeight: FontWeight.bold, color: Colors.green
    ),
    ),
    ),
    ],
    );
  }
  Widget _txtUsuario(){
    return Container(
      padding: EdgeInsets.only(top: 0.0, left: 30.0,right: 30.0),
    child:TextFormField(
      initialValue: _usuario,
      decoration: InputDecoration(
        labelText: 'Usuario',
        labelStyle: TextStyle(fontFamily: 'Montserrat',
        fontWeight: FontWeight.bold,
        color: Colors.grey
        ),
        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.green)
        ),
        hintText: 'Ingresa tu nombre de usuario deseado'
       ),
       
       keyboardType: TextInputType.text,
       validator: (valor){
         if(valor!.isEmpty){
           return "Debe ingresar su nombre de usuario";
         }
         return null;
       },
       onSaved: (valor){
         return setState(() {
           _usuario = valor!;
         });
       },
       )
      );
  }

  Widget _txtContra(){
    return Container(
      padding: EdgeInsets.only(top: 0.0, left: 30.0,right: 30.0),
    child:TextFormField(
      initialValue: _contra,
      decoration: InputDecoration(
        labelText: 'Contraseña',
        labelStyle: TextStyle(fontFamily: 'Montserrat',
        fontWeight: FontWeight.bold,
        color: Colors.grey
        ),
        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.green)
        ),
        hintText: 'Ingresa tu contraseña de usuario deseado'
       ),
       
       keyboardType: TextInputType.visiblePassword,
       validator: (valor){
         if(valor!.isEmpty){
           return "Debe ingresar su contraseña de usuario";
         }
         return null;
       },
       onSaved: (valor){
         return setState(() {
           _contra = valor!;
         });
       },
       )
      );
  }

   Widget _txtNombre(){
    return Container(
      padding: EdgeInsets.only(top: 0.0, left: 30.0,right: 30.0),
    child:TextFormField(
      initialValue: _nombre,
      decoration: InputDecoration(
        labelText: 'Nombre Completo',
        labelStyle: TextStyle(fontFamily: 'Montserrat',
        fontWeight: FontWeight.bold,
        color: Colors.grey
        ),
        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.green)
        ),
        hintText: 'Ingresa tu nombre completo'
       ),
       
       keyboardType: TextInputType.name,
       validator: (valor){
         if(valor!.isEmpty){
           return "Debe ingresar su nombre completo";
         }
         return null;
       },
       onSaved: (valor){
         return setState(() {
           _nombre = valor!;
         });
       },
       )
      );
  }

   Widget _txtCorreo(){
    return Container(
      padding: EdgeInsets.only(top: 0.0, left: 30.0,right: 30.0),
    child:TextFormField(
      initialValue: _correo,
      decoration: InputDecoration(
        labelText: 'Correo electronico',
        labelStyle: TextStyle(fontFamily: 'Montserrat',
        fontWeight: FontWeight.bold,
        color: Colors.grey
        ),
        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.green)
        ),
        hintText: 'Ingresa tu correo electronico personal'
       ),
       
       keyboardType: TextInputType.text,
       validator: (valor){
         if(valor!.isEmpty){
           return "El correo esta vacio";
         }
         return null;
       },
       onSaved: (valor){
         return setState(() {
           _correo = valor!;
         });
       },
       )
      );
  }

  Widget _botonRegistrar(){
    return Container(
    padding: EdgeInsets.only(top:30.0, left: 30.0,right: 30.0),
    height: 70.0,
    child: Material(
      borderRadius: BorderRadius.circular(20.0),
      shadowColor: Colors.greenAccent,
      color: Colors.green,
      elevation: 7.0,
    child: TextButton(
      onPressed: (){
        if(_formKey.currentState!.validate()){
      SnackBar snackBar = SnackBar(content: Text('Usuario Registrado'
      ,style: TextStyle(fontFamily: 'Montserrat', fontSize: 20.0,
      fontWeight: FontWeight.bold, color: Colors.white),
      ), duration: Duration(seconds: 2),
      backgroundColor: Colors.green,
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);

      Navigator.push(context, 
      MaterialPageRoute(builder: (context) => 
      MyHomePage(title:widget.title)
      ),
      );
      }
      }, 
    child: Center(
    child: Text('REGISTRARSE',
     style: TextStyle(
      color: Colors.white, fontWeight: FontWeight.bold,
      fontFamily: 'Montserrat'
     ),
     ),
    ),
    ),
    )
    );
  }
   Widget _botonRegresar(){
    return Container(
    padding: EdgeInsets.only(top:30.0, left: 30.0,right: 30.0),
    height: 70.0,
    color: Colors.transparent,
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          style: BorderStyle.solid,
          width: 1.0
        ),
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(20.0)
      ),
    child: TextButton(
      onPressed: (){
      Navigator.push(context, 
      MaterialPageRoute(builder: (context) => 
      MyHomePage(title:widget.title)
      ),
      );
      
      }, 
    child: Center(
    child: Text('REGRESAR',
     style: TextStyle(
      color: Colors.black, fontWeight: FontWeight.bold,
      fontFamily: 'Montserrat'
     ),
     ),
    ),
    ),
    )
    );
  }

  
 
}