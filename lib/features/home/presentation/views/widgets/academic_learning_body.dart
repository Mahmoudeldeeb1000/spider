import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utiles/app_images.dart';

class AcademicLearningBody extends StatelessWidget {
  const AcademicLearningBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            AppImages.spider, // Replace with your logo asset path
            height: 30,
            width: 30,
          ),
        ),
        title: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search here...',
                  hintStyle: TextStyle(color: Colors.grey[400]),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon: const Icon(Icons.search, color: Colors.grey),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.only(left: 20,top: 20,bottom: 9),
                child: Row(
                  children: [
                    const Text(
                      "Welcome!",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.white),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      "Mahmoud",
                      style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                    ),
                    Spacer(),
                    IconButton(
                      icon: const Icon(Icons.notifications, color: Colors.white),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  const Text(
                    "Academic Learning",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.menu,color: Colors.red,)),
                ],
              ),
            ),
            Text("in-depth academic resources for learning security.",style: TextStyle(color: Colors.grey),),
            const SizedBox(height: 10),

                  Center(child: _buildProjectCard('Cybersecurity \n Foundations', AppImages.academic1),),


            const SizedBox(height: 30),
            Center(child: _buildProjectCard('penetration \n Testing Track', AppImages.academic2)),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        currentIndex: 0, // Set to selected index
        onTap: (index) {
          // Handle bottom nav tap
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: "Explore"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
  Widget _buildProjectCard(String title, String imagePath) {
    return Column(
      children: [
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 14),
        ),
      ],
    );
  }
}
