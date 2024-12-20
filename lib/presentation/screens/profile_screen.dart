import 'package:coffee_app_ui/presentation/screens/home_screen.dart';
import 'package:coffee_app_ui/presentation/widgets/appbar_container.dart';
import 'package:coffee_app_ui/presentation/widgets/profile_component.dart';
import 'package:flutter/material.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Padding(
        padding: const EdgeInsets.only(top: 50,left: 20,right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: const AppBarContainer(
                      child: Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: Colors.grey,
                        size: 19,
                      ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // profile image.....
              Container(
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white70,
                    width: 2.0,
                  ),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/jahid.jpg"),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              // Name, email text
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Md. Jahid Hasan",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Image.asset(
                          "assets/images/verified.png",
                          height: 18,
                      ),
                    ],
                  ),
                  const Text(
                    "mdjahidhasan790523@gmail.com",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w300
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
               Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const ProfileComponent(
                    title: 'My Profile',
                    icon: Icons.person,
                  ),

                  ProfileComponent(
                    title: 'Home',
                    icon: Icons.home,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context)=> const HomeScreen(),
                       ),
                      );
                    },
                  ),

                  const ProfileComponent(
                    title: 'Setting',
                    icon: Icons.settings,
                  ),

                  const ProfileComponent(
                    title: 'Notifications',
                    icon: Icons.notifications,
                  ),

                  const ProfileComponent(
                    title: 'Chat',
                    icon: Icons.chat,
                  ),

                  const ProfileComponent(
                    title: 'Share',
                    icon: Icons.share,
                  ),

                  const ProfileComponent(
                    title: 'Log Out',
                    icon: Icons.logout,
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

