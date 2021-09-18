import 'package:flutter/material.dart';
import 'package:todo1/screens/archives_tasks_screen.dart';
import 'package:todo1/screens/done_tasks_screen.dart';
import 'package:todo1/screens/new_tasks_screen.dart';
// commit
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> screens = [NewTasksScreen(), DoneTasksScreen(),ArchivedTasksScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TODO APP"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(

        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.list), label: "Tasks"),
          BottomNavigationBarItem(
              icon: Icon(Icons.check_circle_outline), label: "Done"),
          BottomNavigationBarItem(
              icon: Icon(Icons.archive_outlined), label: "Archived"),
        ],
      ),
      body: screens[currentIndex],
    );
  }
}
