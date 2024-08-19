import 'package:flutter/material.dart';
import 'package:list_view_gridle_task/main.dart';

class Biryani_screen extends StatefulWidget {
  const Biryani_screen({super.key});

  @override
  State<Biryani_screen> createState() => _Biryani_screenState();
}

class _Biryani_screenState extends State<Biryani_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
              onTap: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => List_View()),
            );
          },
          child: const Icon(Icons.arrow_back,color: Colors.white,)),
        title: const Text('Biryani Recipe',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30,),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset('assets/biryani.jpeg',width: 200,height: 200,fit: BoxFit.cover)),
            ),
            const SizedBox(height: 30,),
            const Padding(
              padding: EdgeInsets.only(right: 170),
              child: Text('INGREDIENTS',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
            ),
            const SizedBox(height: 20,),
            const Padding(
              padding:  EdgeInsets.only(right: 20,left: 25),
              child: Text('Chicken biryani is a delicious Pakistani/Indian rice dish thats typically reserved for special occasions such as weddings, parties, or holidays such as Ramadan. It has a lengthy preparation, but the work is definitely worth it. For biryani, basmati rice is the ideal variety to use.'),
            ),
            const SizedBox(height: 20,),
            const Text('- 1 cup boiled basmati rice'),
            const Text('- 1/2 teaspoon mint leaves'),
            const Text('- salt as required'),
            const Text('- 2 teaspoon virgin olive oil'),
            const Text('- 3 green cardamom'),
            const Text('- 2 clove'),
            const Text('- 2 onion'),
            const Text('- 1 teaspoon turmeric'),
            const Text('- 1 tablespoon garlic paste'),
            const Text('- 1 cup hung curd'),
            const Text('- 2 tablespoon coriander leaves'),
            const Text('- water as required'),
            const Text('- 1 tablespoon ghee'),
            const Text('- 600 gm chicken'),
            const Text('- 1 tablespoon garam masala powder'),
            const Text('- 1 teaspoon saffron'),
            const Text('- 1 tablespoon bay leaf'),
            const Text('- 1 black cardamom'),
            const Text('- 1 teaspoon cumin seeds'),
            const Text('- 1 tablespoon rose water'),
        
          ],
        ),
      ),
    );
  }
}