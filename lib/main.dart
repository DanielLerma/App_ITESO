import 'package:flutter/material.dart';

void main() => runApp(MyAppIteso());

class MyAppIteso extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: CounterLikeState(),
    );
  }
}

class CounterLikeState extends StatefulWidget {
  CounterLikeState({
    Key? key,
  }) : super(key: key);

  @override
  HomePage createState() => HomePage();
}

class HomePage extends State<CounterLikeState> {

  int count = 0;
  Color c1 = Colors.black;
  Color c2 = Colors.black;
  Color c3 = Colors.black;

  void incrementCount(){
    setState((){
      count++;
    });
  }

  void decrementCount(){
    setState((){
      count--;
    });
  }

  void changeColor1(){
    setState((){
      if(c1 == Colors.blue){
        c1 = Colors.black;
      }
      else{
        c1 = Colors.indigo;
      }
    });
  }

  void changeColor2(){
    setState((){
      if(c2 == Colors.blue){
        c2 = Colors.black;
      }
      else{
        c2 = Colors.indigo;
      }
    });
  }

  void changeColor3(){
    setState((){
      if(c3 == Colors.blue){
        c3 = Colors.black;
      }
      else{
        c3 = Colors.indigo;
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('App ITESO'),
      ),
      body: ListView(
        children: [
          // Imagen
          Image.network(
              "https://cruce.iteso.mx/wp-content/uploads/sites/123/2018/04/Portada-2-e1525031912445.jpg"),
          // Fila con textos y botón
          Container(
            height: 30
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                // alineamos la 'fila' dentro de la col a la izq
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("ITESO - Universidad Jesuita de Guadalajara", 
                  style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("San Pedro Tlaquepaque, Jal.",              
                  style: TextStyle(color: Colors.grey),
                  ),
                ],), 
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(onPressed: (){
                        incrementCount();
                        print("plus"); 
                      }, icon: Icon(Icons.thumb_up, color: Colors.indigo)),
                      IconButton(onPressed: (){
                        decrementCount();
                        print("minus"); 
                      }, icon: Icon(Icons.thumb_down, color: Colors.indigo)),
                    ]
                  ),
                  Text("${count}")
                ],
              ),
            ],
          ),
          Row(
            // Fila para íconos
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  IconButton(onPressed: (){
                      changeColor1();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: const Text('Enviar correo'),
                        ),
                      );
                  }, icon: Icon(Icons.mail), iconSize: 64, color: c1),
                  Text('Correo')
                ],
              ),
              Column(
                children: [
                  IconButton(onPressed: (){
                      changeColor2();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: const Text('Hacer llamada'),
                        ),
                      );
                  }, icon: Icon(Icons.call), iconSize: 64, color: c2),
                  Text('Llamada')
                ],
              ),
              Column(
                children: [
                  IconButton(onPressed: (){
                      changeColor3();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: const Text('Ir al ITESO'),
                        ),
                      );
                  }, icon: Icon(Icons.directions), iconSize: 64, color: c3),
                  Text('Ruta')
                ],
              ),
            ],
          ),
          Container(
            height: 20,
          ),
          Container(
            height: 35,
          ),
          Text("Ut dolore ut ex commodo exercitation magna nisi aute. Commodo sunt nisi ullamco aliqua enim proident quis cupidatat. Sint magna ipsum ullamco magna amet eu sit. Duis aute ut esse irure ut reprehenderit esse ut excepteur dolor.")
          // Fila
        ],
      ),
    );
  }
}
