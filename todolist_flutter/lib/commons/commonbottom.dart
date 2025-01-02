import 'package:flutter/material.dart';
import 'package:todolist/commons/colors.dart';

class Commonbottom extends StatefulWidget {
  const Commonbottom({super.key});

  @override
  State<Commonbottom> createState() => _CommonbottomState();
}

class _CommonbottomState extends State<Commonbottom> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: SizedBox(
        width: double.infinity,
        height: 100,
        child: Stack(
          clipBehavior: Clip.none, // 부모 영역 바깥으로 표시되도록 설정
          children: [
            // BottomNavigationBar를 먼저 렌더링
            BottomNavigationBar(
              currentIndex: _currentIndex,
              fixedColor: whiteColor,
              unselectedItemColor: white44,
              backgroundColor: Color(0xFF363636),
              type: BottomNavigationBarType.fixed,
              onTap: (int index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home, size: 24),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_month_outlined, size: 24),
                  label: "Calendar",
                ),
                BottomNavigationBarItem(
                  icon: SizedBox.shrink(),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.access_time_outlined, size: 24),
                  label: "Focus",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person, size: 24),
                  label: "Profile",
                ),
              ],
            ),

            // Positioned로 FloatingActionButton 추가
            Positioned(
              bottom: 50, // 경계선 위로 올림
              left: MediaQuery.of(context).size.width / 2 - 32, // 화면 중앙
              child: SizedBox(
                width: 64,
                height: 64,
                child: FloatingActionButton(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  onPressed: () {
                    debugPrint("test");
                    if (mounted) {
                      addTask(context);
                    }
                  },
                  backgroundColor: buttonColor,
                  child: Icon(Icons.add, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> addTask(BuildContext context) => showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: 'Add Task',
      pageBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation) {
        return Align(
          alignment: Alignment.center,
          child: Material(
            color: modalBackGround,
            child: Container(
              width: MediaQuery.of(context).size.width, // 화면 너비에 딱 맞춤
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Add Task',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  TextField(
                    controller: TextEditingController(),
                    decoration: InputDecoration(
                      labelText: 'Enter your task',
                      hintText: 'Enter your task',
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('Close'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
