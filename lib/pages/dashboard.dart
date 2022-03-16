import 'package:fct_irs/pages/find_tin.dart';
import 'package:fct_irs/pages/register.dart';
import 'package:fct_irs/widget/navigation_drawer_widget.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(MaterialApp(
    home: Dashboard(),
  ));
}

//Change Password Starts
class Dashboard extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Dashboard> {
  String tin = '';
  String email = '';
  String name = '';
  String address = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text('FCT-IRS'),
        ),

      body: Container(
        margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView(children: [
            Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.green,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //Icon(Icons.person, size: 40, color: Colors.white,),
                  Text("TIN:", style: TextStyle(color: Colors.white, fontSize: 20,),),
                  Text("6102369835", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                ],),
            ),
            Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.green,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //Icon(Icons.person, size: 40, color: Colors.white,),
                  Text("Name:", style: TextStyle(color: Colors.white, fontSize: 20,),),
                  Text("Musa Ibrahim Adeka", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                ],),
            ),
            Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.green,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //Icon(Icons.location_on, size: 40, color: Colors.white,),
                  Text("Tax Office:", style: TextStyle(color: Colors.white, fontSize: 20,),),
                  Text("GAR", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                ],),
            ),
            Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.green,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //Icon(Icons.email, size: 40, color: Colors.white,),
                  Text("Email:", style: TextStyle(color: Colors.white, fontSize: 20,),),
                  Text("something@something.com", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                ],),
            ),
          ],
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 20, crossAxisSpacing: 10),
          ),
        ),
      ),
        );
  }
} //Change Password Ends
