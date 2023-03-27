import 'package:flutter/material.dart';

class HomeScreenWeb extends StatelessWidget {
  const HomeScreenWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4,
        backgroundColor: Colors.deepPurple,
        title: const Text(
          "Web View",
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Padding(
         padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          children: [
             Row(
              children: [
                Expanded(child: _imageWidget(image: 'assets/1.jpg')),
                const SizedBox(width: 40),
                Expanded(child: _imageWidget(image: 'assets/2.jpg')),
                const SizedBox(width: 40),
                Expanded(child: _imageWidget(image: 'assets/3.jpg')),
              ],
             ),
              const SizedBox(height: 40),
               Row(
              children: [
                Expanded(child: _imageWidget(image: 'assets/4.jpg')),
                const SizedBox(width: 40),
                Expanded(child: _imageWidget(image: 'assets/5.jpg')),
                const SizedBox(width: 40),
                Expanded(child: _imageWidget(image: 'assets/6.jpg')),
              ],
             ),
          ],
        ),
      ),
    );
  }
   Widget _imageWidget({required String image}) {
    return Container(
      height: 250,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
    );
  }
}