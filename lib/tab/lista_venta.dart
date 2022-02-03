/*
import 'package:flutter/material.dart';

class VentanLista extends StatefulWidget {
  const VentanLista({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<VentanLista> createState() => _ListaState();
}
class _ListaState extends State<VentanLista> {
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
      appBar: AppBar(
        title: Text(widget.title),
      ),
    
      body: _body()
    );
  }
  Widget _body(){ 
    return Form(
    child: Container(
    child:Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _Lista(),
        ],
      ),
      ),
      key: _formKey,
      );
  }

  Widget _Lista(){
    List<venta> ventas=[
      venta(1, '2021', 12),
      venta(2, '2021', 12),
      venta(3, '2021', 12),
      venta(4, '2021', 12),
    ];
    return ListView.separated(
      itemBuilder: (context, index), =>Text('Venta'+index.toString()), 
      separatorBuilder:(context, index) => Divider(
        color: Colors.black,
        thickness: 2,
        height: 30,

      ),
       itemCount: ventas.length);+
  }

}class venta{
 final int numero;
  final String fecha;
  final double total;

  venta(
    this.numero, this.fecha, this.total);
}
*/