import 'package:flutter/material.dart';

class HomeScreenTab extends StatelessWidget {
  const HomeScreenTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4,
        backgroundColor: Colors.deepOrange,
        title: const Text(
          "Tablet View",
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: SingleChildScrollView(
       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(child: _imageWidget(image: 'assets/1.jpg')),
                const SizedBox(width: 40),
                Expanded(child: _imageWidget(image: 'assets/2.jpg')),
              ],
            ),
            const SizedBox(height: 40),
            Row(
              children: [
                Expanded(child: _imageWidget(image: 'assets/3.jpg')),
                const SizedBox(width: 40),
                Expanded(child: _imageWidget(image: 'assets/4.jpg')),
              ],
            ),
            const SizedBox(height: 40),
            Row(
              children: [
                Expanded(child: _imageWidget(image: 'assets/5.jpg')),
                const SizedBox(width: 40),
                Expanded(child: _imageWidget(image: 'assets/6.jpg')),
              ],
            ),
            const SizedBox(height: 40),
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
