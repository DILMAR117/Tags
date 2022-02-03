import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VistaMapa extends StatefulWidget {
  const VistaMapa({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<VistaMapa> createState() => _MapaState();
}
class _MapaState extends State<VistaMapa> {
  bool state =false;
  String _usuario='Dilmar';
  String _mascota='Kliford';
  String _temperatura='20';
  @override

   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      
      body: _body(),
    );
  }
  Widget _body(){
     return CupertinoPageScaffold(
       child: Container(
         padding: EdgeInsets.fromLTRB(0.0, 500, 20.0, 0.0),
         margin: EdgeInsets.all(0),
         alignment: Alignment.topRight,
        child: FloatingActionButton.extended(
          onPressed: () {
            showCupertinoModalPopup<void>(
              context: context,
              builder: (BuildContext context) => CupertinoActionSheet(
                title: Text(_mascota + ' Mascota de '+ _usuario),
                message:  Text('Temperatura: '+ _temperatura +'°'),
                actions: <CupertinoActionSheetAction>[
                  CupertinoActionSheetAction(
                    child: const Text('Ocultar'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            );
          },
        label: const Text('Temperatura'),
        icon: const Icon(Icons.gradient),
        backgroundColor: Colors.green,
        
        ),
      ),
      );
  }
}

  
  
