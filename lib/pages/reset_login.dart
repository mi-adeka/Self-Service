import 'package:fct_irs/pages/register.dart';
import 'package:fct_irs/widget/navigation_drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:fct_irs/main.dart';

void main() {
  runApp(MaterialApp(
    home: ResetLogin(),
  ));
}

//Login Starts
class ResetLogin extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ResetLogin> {
  TextEditingController dateController = TextEditingController();
  TextEditingController tinController = TextEditingController();
  String password = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('FCT-IRS'),
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Resend Login Details',
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Please enter your credentials to resend your login details',
                      style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: dateController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Date of Incorporation or Date of Birth',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    controller: tinController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'TIN',
                    ),
                  ),
                ),
                Container(
                    height: 50,
                    margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.green,
                      child: Text('Send Email'),
                      //call the API for the login logic
                      onPressed: () {
                        print('Date of Birth: ${dateController.text}');
                        print('TIN: ${password}');
                      },
                    )),
              ],
            )));
  }
} //Login Ends
