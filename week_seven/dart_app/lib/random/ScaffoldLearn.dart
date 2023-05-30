import 'package:dart_app/random/Lion_Button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScafoldLearn extends StatelessWidget {
  const ScafoldLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: Center(
        child: Text('Welcome to my app!'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your code here
        },
        backgroundColor: Colors.white,
        elevation: 120,
        child: LionButton(),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              child: Text('Menu'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Add your code here
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Add your code here
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.blue,
        onTap: (index) {
          // Add your code here
        },
      ),
    );
  }
}
