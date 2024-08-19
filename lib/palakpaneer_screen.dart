import 'package:flutter/material.dart';

class palak_screen extends StatefulWidget {
  const palak_screen({super.key});

  @override
  State<palak_screen> createState() => _palak_screenState();
}

class _palak_screenState extends State<palak_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: const Icon(Icons.home, color: Colors.white,),
        title: const Text('Palak Paneer',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
        centerTitle: true,
      ),
      body: Column(
        children: [],
      ),


    );
  }
}