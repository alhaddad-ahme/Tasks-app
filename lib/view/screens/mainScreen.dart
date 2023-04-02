import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo_note/controller/notificationHelper.dart';
import 'package:todo_note/view/widgets/main/noteList.dart';
import 'package:todo_note/view/widgets/main/taskList.dart';

import '../../core/constant/color.dart';
import '../../core/constant/icons.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedScreenIndex = 0;

  var notiHelper;
  @override
  void initState() {
    super.initState();
    notiHelper = NotiHelper();
    notiHelper.initializeNotification();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: bulidBody(),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black,
          currentIndex: selectedScreenIndex,
          type: BottomNavigationBarType.fixed,
          onTap: _selecteScreen,
          items: [
            _bulidBottomNavigationBarItem('المهام', AppIcons.main),
            _bulidBottomNavigationBarItem('الملاحظات', AppIcons.artical),
          ],
        ));
  }

  BottomNavigationBarItem _bulidBottomNavigationBarItem(title, icon) {
    return BottomNavigationBarItem(
      activeIcon: SvgPicture.asset(
        icon,
        color: Colors.blue,
      ),
      icon: SvgPicture.asset(
        icon,
        color: Colors.black,
      ),
      label: title,
    );
  }

  void _selecteScreen(int index) {
    setState(() {
      selectedScreenIndex = index;
    });
  }

  final List<Map<String?, Object?>> _screens = [
    {
      'Screen': TaskList(),
      // 'Title': 'المهام',
    },
    {
      'Screen': NoteList(),
      // 'Title': 'الملاحظات',
    },
  ];

  bulidBody() => _screens[selectedScreenIndex]['Screen'];
}
