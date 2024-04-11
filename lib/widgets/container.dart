

import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(),
      child: Center(
        child: Container( //Si un container no esta contenido en un widget de alineacion, ignora sus propiedades width y height y ocupa toda la pantalla
          width: 200, //Si voy a definir un Container unicamente para que sea el contenedor de otros, es recomendable usar SizedBox()
          height: 200,
          alignment: Alignment.topLeft,
          padding: EdgeInsets.all(20), //EdgeInsets se usa en paddings y en margins
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            gradient: const LinearGradient( //RadialGradient existe tambien
              colors: [
                Colors.blue,
                Colors.red,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomCenter,
              stops: [ //aca se define cuanto queres que ocupe cada color de colors
                0.5,
                0.5
              ],
            ),
            //shape: BoxShape.circle, me hace un circulo tambien
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                blurRadius: 10, //degradado
                spreadRadius: 10, //distancia de sombra
                offset: Offset(0,1), //position absolute
              ),
            ],
          ),
          child: const Text(
              "Ezequiel Sansón",
              style: TextStyle(
                color: Colors.black
              ),
          )
        ),
      ),
    );
  }
}