import 'package:flutter/material.dart';
import 'package:tags/vista/inicio.dart';
import 'package:tags/vista/registrousuario.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.green,
      ),
      
      home: const MyHomePage(title: 'Tags',),
    

    );
    
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey =GlobalKey<FormState>();
  String _usuario= "";
  String _contra = "";
  bool _vercontra= true;
  @override

  void _ver(){
    setState(() {
      _vercontra=!_vercontra;
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text(widget.title),
      ),
      */
      body: SingleChildScrollView(child: _body()),
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
          _botonMostrar(),
          _botonIngresar(),
          _botonRegistrar()
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
      padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
    child:Text('Login',
    style: TextStyle(
      fontSize: 80.0, fontWeight: FontWeight.bold
    ),
    ),
    ),
    Container(
    padding: EdgeInsets.fromLTRB(15.0, 175.0, 0.0, 0.0),
    child:Text('Tags',
    style: TextStyle(
      fontSize: 80.0, fontWeight: FontWeight.bold
    ),
    ),
    ),
     Container(
    padding: EdgeInsets.fromLTRB(195.0, 175.0, 0.0, 0.0),
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
        hintText: 'Ingresa tu nombre de usuario'
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
        hintText: 'Ingresa tu contraseña de usuario'
       ),
       obscureText: _vercontra,
       
       keyboardType: TextInputType.visiblePassword,
       validator: (valor){
         if(valor!.isEmpty){
           return "Debe ingresar su contrseña de usuario";
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
   Widget _botonMostrar(){
    return SizedBox(
      child: Container(alignment: Alignment(1.0, 0.0),
      padding: EdgeInsets.only(top: 12.0, right:20.0 ),
      child: TextButton(
        onPressed: _ver, 
        child: Text(_vercontra ?'Mostrar Contraseña': 'Ocultar Contraseña',
        style: TextStyle(fontFamily: 'Montserrat',
        fontWeight: FontWeight.bold,
        color: Colors.green, decoration: TextDecoration.underline
        ),
      ),
      ),
    ),
    );
  }

  Widget _botonIngresar(){
    return Container(
      padding: EdgeInsets.only(top:0.0, left: 30.0,right: 30.0),
    height: 40.0,
    child: Material(
      borderRadius: BorderRadius.circular(20.0),
      shadowColor: Colors.greenAccent,
      color: Colors.green,
      elevation: 7.0,
    child: TextButton(
      onPressed: (){
        if(_formKey.currentState!.validate()){
      SnackBar snackBar = SnackBar(content: Text('Iniciando Sesion'
      ,style: TextStyle(fontFamily: 'Montserrat', fontSize: 20.0,
      fontWeight: FontWeight.bold, color: Colors.white),
      ), duration: Duration(seconds: 2),
      backgroundColor: Colors.green,
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);

      Navigator.push(context, 
      MaterialPageRoute(builder: (context) => 
      VistaInicio(title:widget.title)
      ),
      );
      }
      }, 
    child: Center(
    child: Text('INICIAR SESION',
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

  Widget _botonRegistrar(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:<Widget> [
        Text('¿Nuevo en Tags?',
        style: TextStyle(
          fontFamily: 'Montserrat'
        ),
        ),
        TextButton(
          onPressed: (){
          Navigator.push(context, 
          MaterialPageRoute(builder: (context) => 
          VistaRegistroUsuario(title:widget.title)
      ),
      );
          },
          child: Text('Registrar',
          style: TextStyle(
            color: Colors.green, fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold, decoration: TextDecoration.underline
          )),

        ), 
      ],
    );
  }
 
}
