import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tags/main.dart';
import 'package:tags/vista/inicio.dart';
import 'package:tags/vista/menu.dart';

class VistaConectar extends StatefulWidget {
  const VistaConectar({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<VistaConectar> createState() => _ConectarState();
}
class _ConectarState extends State<VistaConectar> {
  bool state =false;
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
  Widget _body(){
    return Form(child: 
    Container(
      child: Column(
        children: [
          _logo(),
          _conectar()
        ],
      ),
      ),
    );
  }
  Widget _logo(){
    return Container(
      color: Colors.black,
      child: Image.asset('assets/logo.png'),
     margin: EdgeInsets.all(0),
     padding: EdgeInsets.all(30),
     alignment: Alignment.center,
     height: 190,
    );
  }
  Widget _conectar(){
   return new CupertinoPageScaffold(
      navigationBar:CupertinoNavigationBar(
        leading: CupertinoNavigationBarBackButton(
          onPressed: ()
          { Navigator.of(context).push(MaterialPageRoute(
            builder:(BuildContextcontext)=>VistaInicio(title:widget.title) ));},
          color: CupertinoColors.label,
        ),
        middle: Text("Estado de conexión")
      ),
      child:Material(
        child: Container(
          margin: EdgeInsets.only(top:100, left: 20, right: 10),
          width: double.infinity,
          child:Column(
            children: [
              Container(
                width: double.infinity,
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.75,
                      child: Text("Bluetooth", style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.15,
                      child: CupertinoSwitch(
                        
                        value:state,
                        onChanged: (value){
                          state = value;
                          setState(() {
                          }
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                height: 1,
                color: CupertinoColors.systemGrey5,
              ),
              SizedBox(
                height:30
              ),
              Text(state == true? "Conectado": "Desconectado",
                style:TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: state == true? CupertinoColors.activeGreen : CupertinoColors.destructiveRed
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}
