import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:task1/view/widgets/home_screen.dart';
import 'package:task1/view/widgets/mail_screen.dart';
import 'package:task1/view/widgets/project_screen.dart';
import 'package:task1/view/widgets/settings_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

int _selectedIndex = 0;
List<Widget> _widgetOptions = <Widget>[
  const HomeScreen(),
  const ProjectScreen(),
  const MailTab(),
  const SettingsTab()
];
TextEditingController textController = TextEditingController();

class _BottomNavState extends State<BottomNav> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    debugPrint('selected index ${_selectedIndex}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.only(left: 12),
          child: CircleAvatar(
            radius: 13,
            backgroundImage: AssetImage('assets/images/cartoon-img.png'),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: AnimSearchBar(
              width: MediaQuery.sizeOf(context).width * 0.78,
              textController: textController,
              onSuffixTap: () {
                setState(() {
                  textController.clear();
                });
              },
              onSubmitted: (String) {},
            ),
          ),

          // IconButton(
          //   onPressed: () {},
          //   icon: const Icon(
          //     Icons.search,
          //     size: 28,
          //     color: Colors.grey,
          //   ),
          // ),
        ],
        toolbarHeight: 90,
        backgroundColor: Colors.white,
        elevation: 00,
      ),
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue[200],
        elevation: 6.0,
        onPressed: () {},
        child: const Icon(Icons.add),
        //params
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 5.0,
        clipBehavior: Clip.antiAlias,
        child: SizedBox(
          height: kBottomNavigationBarHeight,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            onTap: _onItemTapped,
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey[600],
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.file_copy_outlined),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.mail),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "",
              )
            ],
          ),
        ),
      ),
      body: _widgetOptions[_selectedIndex],
    );
  }
}
