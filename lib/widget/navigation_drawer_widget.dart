import 'package:fct_irs/pages/change_password.dart';
import 'package:fct_irs/pages/login.dart';
import 'package:fct_irs/pages/new_returns.dart';
import 'package:fct_irs/pages/spouse_details.dart';
import 'package:fct_irs/pages/verify_tcc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fct_irs/pages/dashboard.dart';


class NavigationDrawerWidget extends StatelessWidget{
  final padding = EdgeInsets.symmetric(horizontal: 20);

  //Navigation Menu Items
  @override
  Widget build(BuildContext context) {
    final name = 'Musa Ibrahim Adeka';
    final email = 'miadeka@gmail.com';
    final tin = '1234567890';
    final urlImage = 'https://www.clipartmax.com/max/m2i8G6N4A0b1G6Z5/';

    return Drawer(
      child: Material(
        //color: Color.fromRGBO(0, 175, 0, 1),
        color: Colors.green,
        child: ListView(
          //padding: padding,
          children: <Widget>[
            buildHeader(
              urlImage: urlImage,
              name: name,
              email: email,
              tin: tin,
              //  onClicked: ()  {  },
            ),
            const SizedBox(height: 0),
            Divider(color: Colors.white, thickness: 1),
            const SizedBox(height: 5),
            buildMenuItem(
              text: 'Dashboard',
              icon: Icons.dashboard,
              onClicked: () => selectedItem(context, 0),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Profile',
              icon: Icons.person,
              onClicked: () => selectedItem(context, 1),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Verifications',
              icon: Icons.verified,
              onClicked: () => selectedItem(context, 2),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Tax Returns',
              icon: Icons.label_important,
              onClicked: () => selectedItem(context, 3),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Logout',
              icon: Icons.logout,
              onClicked: () => selectedItem(context, 4),
            ),
            // const SizedBox(height: 24),
            // Divider(color: Colors.white),
            // const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  Widget buildHeader({
    required String urlImage,
    required String name,
    required String email,
    required String tin,
    //required VoidCallback onClicked,
}) => InkWell(
    //onTap: onClicked,
    child: Container(
      padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
      child: Row(
        children: [
          CircleAvatar(radius: 30, backgroundImage: NetworkImage(urlImage)),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(fontSize: 17, color: Colors.white),
              ),
              SizedBox(height: 3),
              Text(
                email,
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
              SizedBox(height: 3),
              Text(
                tin,
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    ),
  );

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index){
      case 0:
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Dashboard(),
        ));
        //Page processing
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => ChangePassword(),
        ));
        //Page Ready
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => VerifyTCC()
        ));
        //Page Ready
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewReturns()
        ));
        //Page processing
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Login()
        ));
        // Ready
        break;
    }
  }
}