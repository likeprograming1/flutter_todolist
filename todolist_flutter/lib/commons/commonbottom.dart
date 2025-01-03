import 'package:flutter/material.dart';
import 'package:todolist/commons/colors.dart';

class Commonbottom extends StatefulWidget {
  const Commonbottom({super.key});

  @override
  State<Commonbottom> createState() => _CommonbottomState();
}

class _CommonbottomState extends State<Commonbottom> {
  int _currentIndex = 0;
  int _taskIndex = 0;
  String task = "";
  String description = "";
  final TextEditingController _taskController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  void dispose() {
    _taskController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            fixedColor: whiteColor,
            unselectedItemColor: white44,
            backgroundColor: const Color(0xFF363636),
            type: BottomNavigationBarType.fixed,
            onTap: (int index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: const [
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
        ),
        Positioned(
          bottom: 50,
          left: MediaQuery.of(context).size.width / 2 - 32,
          child: SizedBox(
            width: 64,
            height: 64,
            child: FloatingActionButton(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              onPressed: () {
                addTask(context);
              },
              backgroundColor: buttonColor,
              child: const Icon(Icons.add, color: Colors.white),
            ),
          ),
        ),
      ],
    );
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
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'Add Task',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 16),
                    _taskIndex == 0
                        ? TextField(
                            controller: _taskController,
                            cursorColor: Colors.white,
                            decoration: const InputDecoration(
                              labelText: 'Enter your task',
                              hintText: 'Enter your task',
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                            ),
                            onChanged: (value) => setState(() {
                              task = value;
                            }),
                          )
                        : Text(task),
                    const SizedBox(height: 16),
                    _taskIndex == 1
                        ? TextField(
                            controller: _descriptionController,
                            cursorColor: Colors.white,
                            decoration: const InputDecoration(
                              labelText: 'Enter your Description',
                              hintText: 'Enter your Description',
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                            ),
                            onChanged: (value) => setState(() {
                              description = value;
                            }),
                          )
                        : Text(description == "" ? "Description" : description),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon:
                                  Icon(Icons.timer_outlined, color: whiteColor),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.local_offer_outlined,
                                  color: whiteColor),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon:
                                  Icon(Icons.flag_outlined, color: whiteColor),
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              _taskIndex += 1;
                            });
                            if (task.isNotEmpty && description.isNotEmpty) {
                              debugPrint('Task: $task');
                              debugPrint('Description: $description');
                              // Navigator.of(context).pop();
                            } else {
                              debugPrint('Please fill in all fields');
                            }
                          },
                          icon: Icon(Icons.send_outlined, color: whiteColor),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );
}
