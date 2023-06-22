import 'package:flutter/material.dart';
import 'package:navigation/screen_two.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'Home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffA6CD4E),
      appBar: AppBar(
        title: const Text('Navigation'),
        backgroundColor: const Color(0xff242E38),
      ),
      drawer: Drawer(
        backgroundColor: const Color(0xffA6CD4E),
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Color(0xff242E38)),
                  accountName: Text('Salman'),
                  currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/17255021/pexels-photo-17255021/free-photo-of-papershoot-camera.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1')),
                  accountEmail: Text('m.salman@gmail.com')),
            ),
            ListTile(
              leading: const Icon(
                Icons.logout,
                color: Colors.white,
              ),
              onTap: () => {
                Navigator.pushNamed(context, HomeScreen.id),
              },
            )
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
                decoration: BoxDecoration(
                    color: const Color(0xff242E38),
                    borderRadius: BorderRadius.circular(8)),
                height: 50,
                width: 150,
                child: TextButton(
                  child: const Text(
                    'Goto screen 2',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, ScreenTwo.id);
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => const ScreenTwo(),
                    //     ));
                  },
                )),
          )
        ],
      ),
    );
  }
}
