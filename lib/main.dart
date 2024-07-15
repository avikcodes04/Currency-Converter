import 'package:currency_converter/currency_converter_cupertino_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:currency_converter/hurray.dart';

void main(){
  runApp(const MyApp());
}

//Types of Widgets
//1.StatelessWidget
//2.StatefulWidget





class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CurrencyConverterMaterialPage(),
    );
  }
}
class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      home:CurrencyConverterCupertinoPage(),
    );
  }
}
