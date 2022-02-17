import 'package:flutter/material.dart';
import 'package:jumia/bottomNavigation/historyPage.dart';
import 'package:jumia/bottomNavigation/inviteaFriend.dart';
import 'package:jumia/bottomNavigation/shakandWin.dart';
import 'package:jumia/bottomNavigation/youScreen.dart';
import 'package:jumia/homePage.dart';

/// This is the stateful widget that the main application instantiates.
// ignore: must_be_immutable
class navigation extends StatefulWidget {
  // var togglecall;
  // navigation({this.togglecall});
  int index;

  navigation({this.index});
  @override
  State<navigation> createState() => _navigationState();
}

/// This is the private State class that goes with navigation.
class _navigationState extends State<navigation> {
  int ind;
  int _selectedIndex;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    ShakandWin(),
    // Stack(
    //   children: [
    //     DrawerScreen(),
    //     // DrawerHome(),
    //     flutter_king_home()
    //   ],
    // ),
    InviteaFriend(),
    // Text(
    //   'Index 2: Ui design',
    //   style: optionStyle,
    // ),
    // ListPage(),
    // Text(
    //   'Index 2: Q/a',
    //   style: optionStyle,
    // ),
    HistoryScreen(),
    // Home(),
    // Text(
    //   'Index 2: Admin',
    //   style: optionStyle,
    // ),
    personalInfo()
  ];

  void _onItemTapped(int index) {
    setState(() {
      if (ind == 0) {
        _selectedIndex = ind;
        ind = null;
      } else if (ind == 1) {
        _selectedIndex = ind;
        ind = null;
      } else {
        _selectedIndex = index;
      }

      if (widget.index != 1 || widget.index != 0) _selectedIndex = index;
      widget.index == 1 || widget.index == 0
          ? _selectedIndex = widget.index
          : _selectedIndex = index;
    });
  }

  @override
  void initState() {
    ind = widget.index;

    ind == null ? _selectedIndex = 0 : _selectedIndex = ind;

    super.initState();
    ind = null;
    // Provider.of<ConnectivityProvider>(context, listen: false).startMoitoring();
  }
 
  @override
  Widget build(BuildContext context) {
   
        return Scaffold(
          body: Center(
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
          // body: PageUi(),
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Shake & Win',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.share),
                label: 'Invite a Friend',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.history),
                label: 'History',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'you',
              ),
            ],
            selectedItemColor:
                Colors.blue,
            unselectedItemColor: Colors.grey.withOpacity(.60),
            backgroundColor: 
               Color(0xffF2F4F3),
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
          ),
        );
      
    
  }
}
  //  Widget PageUi() {
  //   return Consumer<ConnectivityProvider>(builder: (context, model, child) {
  //     if (model.isOnline != null) {
  //       return model.isOnline
  //           ? Center(
  //           child: _widgetOptions.elementAt(_selectedIndex),
  //         )
  //           : Text('no inter connection');
  //     }
  //     return Center(
  //       child: Container(
  //         child: CircularProgressIndicator(),
  //       ),
  //     );
  //   });
  // }
