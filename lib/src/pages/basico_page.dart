import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  
final estiloTitulo= TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold );
final estiloSubTitulo= TextStyle(fontSize: 18.0, color: Colors.grey );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
          _crearImagen(),
          _crearTitulo(),
          _crearAcciones(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
        ],
        ),
      )
    );
  }

  Widget _crearImagen(){
    return Container(
      width: double.infinity,
      child: Image(
              image: NetworkImage('https://photographycourse.net/wp-content/uploads/2014/11/Landscape-Photography-steps.jpg'),
              height: 200.0,
              fit: BoxFit.cover,
            ),
    );
  }

  _crearTitulo() {
    return SafeArea(
      child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget> [
                        Text('Lago con girasoles', style: estiloTitulo),
                        SizedBox(height: 7.0),
                        Text('Lago en Alemania', style: estiloSubTitulo),
                      ],
                    ),
                  ),
                  Icon(Icons.star, color: Colors.red, size: 30.0 ),
                  Text('41', style: TextStyle(fontSize: 20.0))
                ],
              ),
            ),
    );
  }

  _crearAcciones() {
    
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _accion(Icons.call, 'CALL'),
        _accion(Icons.near_me, 'ROUTE'),
        _accion(Icons.share, 'SHARE')
        
      ],
    );

  }

  _accion(IconData icon, String texto){
    return Column(
          children: <Widget>[
            Icon(icon, color: Colors.blue, size: 40.0),
            SizedBox(height: 5.0),
            Text(texto, style: TextStyle(fontSize: 15.0, color: Colors.blue) ,)
          ],
        );
  }

  _crearTexto() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 0.0),
        child: Text(
          'Et ex duis aute in veniam occaecat incididunt voluptate. Occaecat esse ad ullamco nostrud sint minim aliqua labore adipisicing. Enim ut qui nisi est. Consectetur deserunt et do laborum occaecat exercitation aute nostrud et eu.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}