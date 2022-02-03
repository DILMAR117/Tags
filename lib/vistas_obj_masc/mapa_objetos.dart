import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VistaMapaObj extends StatefulWidget {
  const VistaMapaObj({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<VistaMapaObj> createState() => _MapaState();
}
class _MapaState extends State<VistaMapaObj> {
  bool state =false;
  String _usuario='Dilmar';
  String _objeto='Mochila';
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
                title: Text(_objeto + ' de '+ _usuario),
                message:  Text('Historial'),
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
        label: const Text('Historial'),
        icon: const Icon(Icons.list),
        backgroundColor: Colors.green,
        
        ),
      ),
      );
  }
}