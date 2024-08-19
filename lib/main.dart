import 'package:flutter/material.dart';
import 'package:list_view_gridle_task/biryani_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: 
      //palak_screen(),
      List_View() ,
      //Biryani_screen()
      
    );
  }
}

class List_View extends StatefulWidget {
  List_View({super.key});
  List<String> images=['assets/biryani.jpeg','assets/butternan.jpeg','assets/gulabjamun.jpeg','assets/jeerarice.jpeg','assets/palakpaneer.jpeg','assets/chickenkarahi.jpeg','assets/kabab.jpeg','assets/muttonrosh.jpeg','assets/bbq.jpeg'];
  List<String> names=['BIRYANI','BUTTER NAAN', 'GULAB JAMUN', 'JEERA RICE','PALAK PANEER','CHICKEN KARAHI','KABAB','MUTTON ROSH','BBQ CHAMP'];
  @override
  State<List_View> createState() => _List_ViewState();
}

class _List_ViewState extends State<List_View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Recipes',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Expanded(child: ListView.builder(
            itemCount: widget.names.length,
            itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  color: Colors.white,
                  // child: Text(widget.names[index]),
                  child: Row(
                          children: [
                            GestureDetector(
                                  onTap: () {
                                          Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => Biryani_screen()),
                                        );
                                      },
                              child: Image.asset(
                                widget.images[index],
                                height: 100,
                                width: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 30),
                            Text(
                              widget.names[index],
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),]
                  ),
              ),
              );
              
            }))
        ],
      ) ,
    );
  }
}