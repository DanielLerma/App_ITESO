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
  @override
  HomePage createState() => HomePage();
}

class HomePage extends State<CounterLikeState> {
  // const HomePage({
  //   Key? key,
  // }) : super(key: key);

  int count = 0;

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
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: const Text('Enviar correo'),
                        ),
                      );
                  }, icon: Icon(Icons.mail, size: 64),)
                ],
              ),
              Column(
                children: [
                  IconButton(onPressed: (){
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: const Text('Enviar correo'),
                        ),
                      );
                  }, icon: Icon(Icons.mail, size: 64),)
                ],
              ),
              Column(
                children: [
                  IconButton(onPressed: (){
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: const Text('Enviar correo'),
                        ),
                      );
                  }, icon: Icon(Icons.mail, size: 64),)
                ],
              )
            ],
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
