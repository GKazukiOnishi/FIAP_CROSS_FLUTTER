import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

//statefulW -> snippet do Awesome Flutter Snippets
//ctrl . -> import

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: const [
              Text(
                'Hello World',
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                Icons.favorite,
                size: 100,
                color: Color(0xffEA1D5D),
              ),
            ],
          ),

          // child: Text(
          //   'Hello World',
          //   style: TextStyle(
          //     color: Colors.blueAccent,
          //     fontSize: 50,
          //     fontWeight: FontWeight.bold,
          //   ),
          // ),

          // child: Icon(
          //   Icons.favorite,
          //   size: 100,
          //   color: Color(0xffEA1D5D),
          // ),

          // child: Image.asset('assets/png/reeses.png'),

          // child: SvgPicture.asset(
          //   'assets/svg/avocado.svg',
          //   color: Colors.blue,
          // ),
        ),
      ),
    );
  }
}

/*
  SafeArea - para salvar de designs diferentes do celular, exemplo, com borda cortada
  Text - Textos
  TextStyle - estilizar texto
  Colors - Cores do material

  No mundo corporativo não usamos eles direto, temos componentes já prontos para isso
  não ficamos estilizando cada coisa com uma cor e tamanho

  Container - Tem opções para trabalhar com ele, background
  Center - Centraliza, tem menos opções que o Container
  SizedBox - Só mexe no tamanho, menos opções que o Container

  a vírgula no flutter ajuda porque quebra linha automaticamente, mas não é obrigatório

  Icons -> no mundo corporativo temos um específico para usar, aqui vamos usar do material

  No mundo corporativo não saímos usando qualquer cor, temos uma palheta de cores

  cores: 0xff(CorHexadecimal)

  pasta assets -> onde colocamos imagens e etc.

  rodar flutter clean e flutter pub get para recarregar imagens

  Column/Row - aceita lista de widgets

  tem componentes que aceitam listas children ou um só child
*/