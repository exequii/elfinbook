import 'package:flutter/material.dart';

class MyColumns extends StatelessWidget {
  const MyColumns({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(
        color: Colors.black,
      ),
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 45),
        child: Center(
          child: Container(
            color: Colors.grey,
            child: Column(
              //mainAxisSize: MainAxisSize.min,
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly, // funciona como el justify content de CSS
              children: [
                const Text(
                  "Infinity Book",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                //const Spacer(),
                Expanded( //Esto hace que ocupe tudo el espacio disponible restando el espacio que ocupan los demas. SOlo se usa en columns o Row.
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient( //RadialGradient existe tambien
                        colors: [
                          Colors.blue,
                          Colors.red,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                ),
                //const Text("Medios de pago"),
                Container(
                  height: 100,
                  color: Colors.yellow,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
