//Tela início curso:
import 'package:flutter/material.dart';

class MyFirstWidget extends StatelessWidget {
  const MyFirstWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                color: Colors.red,
                width: 100,
                height: 100,
              ),
              Container(
                color: Colors.blue,
                width: 50,
                height: 50,
              ),
            ],
          ),
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                color: Colors.blue,
                width: 100,
                height: 100,
              ),
              Container(
                color: Colors.red,
                width: 50,
                height: 50,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Colors.cyan,
                height: 50,
                width: 50,
              ),
              Container(
                color: Colors.pinkAccent,
                height: 50,
                width: 50,
              ),
              Container(
                color: Colors.purple,
                height: 50,
                width: 50,
              ),
            ],
          ),
          Container(
            color: Colors.amber,
            height: 30,
            width: 300,
            child: const Text(
              'Diamante Amarelo',
              style: TextStyle(
                color: Colors.black,
                fontSize: 28,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              //print('Você apertou o botão');
            },
            child: const Text('Aperte o botão!'),
          ),
        ],
      ),
    );
  }
}
      
      
      
      
      //Exercício 1 - Linha
      // home: Container(
      //   color: Colors.black,
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         crossAxisAlignment: CrossAxisAlignment.center,
      //         children: [
      //           Container(
      //             color: Colors.red,
      //             height: 100,
      //             width: 100,
      //           ),
      //           Container(
      //             color: Colors.orange,
      //             height: 100,
      //             width: 100,
      //           ),
      //           Container(
      //             color: Colors.yellow,
      //             height: 100,
      //             width: 100,
      //           ),
      //         ],
      //       ),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         crossAxisAlignment: CrossAxisAlignment.center,
      //         children: [
      //           Container(
      //             color: Colors.green,
      //             height: 100,
      //             width: 100,
      //           ),
      //           Container(
      //             color: Colors.cyan,
      //             height: 100,
      //             width: 100,
      //           ),
      //           Container(
      //             color: Colors.blue,
      //             height: 100,
      //             width: 100,
      //           ),
      //         ],
      //       ),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         crossAxisAlignment: CrossAxisAlignment.center,
      //         children: [
      //           Container(
      //             color: Colors.purple,
      //             height: 100,
      //             width: 100,
      //           ),
      //           Container(
      //             color: Colors.pinkAccent,
      //             height: 100,
      //             width: 100,
      //           ),
      //           Container(
      //             color: Colors.white,
      //             height: 100,
      //             width: 100,
      //           ),
      //         ],
      //       ),
      //     ],
      //   ),
      // ),
      
      //Exercício 1 - Coluna
      // home: Container(
      //   color: Colors.black,
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       Column(
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         crossAxisAlignment: CrossAxisAlignment.center,
      //         children: [
      //           Container(
      //             color: Colors.red,
      //             height: 100,
      //             width: 100,
      //           ),
      //           Container(
      //             color: Colors.orange,
      //             height: 100,
      //             width: 100,
      //           ),
      //           Container(
      //             color: Colors.yellow,
      //             height: 100,
      //             width: 100,
      //           ),
      //         ],
      //       ),
      //       Column(
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         crossAxisAlignment: CrossAxisAlignment.center,
      //         children: [
      //           Container(
      //             color: Colors.green,
      //             height: 100,
      //             width: 100,
      //           ),
      //           Container(
      //             color: Colors.cyan,
      //             height: 100,
      //             width: 100,
      //           ),
      //           Container(
      //             color: Colors.blue,
      //             height: 100,
      //             width: 100,
      //           ),
      //         ],
      //       ),
      //       Column(
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         crossAxisAlignment: CrossAxisAlignment.center,
      //         children: [
      //           Container(
      //             color: Colors.purple,
      //             height: 100,
      //             width: 100,
      //           ),
      //           Container(
      //             color: Colors.pinkAccent,
      //             height: 100,
      //             width: 100,
      //           ),
      //           Container(
      //             color: Colors.white,
      //             height: 100,
      //             width: 100,
      //           ),
      //         ],
      //       ),
      //     ],
      //   ),
      // ),
