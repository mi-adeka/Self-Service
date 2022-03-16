import 'package:fct_irs/pages/spouse_details.dart';
import 'package:fct_irs/pages/statement_of_income.dart';
import 'package:fct_irs/widget/navigation_drawer_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ChildrenDetails(),
  ));
}

//Login Starts
class ChildrenDetails extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ChildrenDetails> {
  TextEditingController dateController = TextEditingController();
  TextEditingController yearController = TextEditingController();
  String date = '';
  String year = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
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
                      'Personal Details:',
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Children's details:",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: dateController,
                    onChanged: (value) => setState(() => this.date = value),
                    onSubmitted: (value) =>
                        setState(() => this.date = value),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Name:',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: yearController,
                    onChanged: (value) => setState(() => this.year = value),
                    onSubmitted: (value) =>
                        setState(() => this.year = value),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Institution:*',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: dateController,
                    onChanged: (value) => setState(() => this.date = value),
                    onSubmitted: (value) =>
                        setState(() => this.date = value),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Child Income on own right:*',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: dateController,
                    onChanged: (value) => setState(() => this.date = value),
                    onSubmitted: (value) =>
                        setState(() => this.date = value),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'DOB:*',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: dateController,
                    onChanged: (value) => setState(() => this.date = value),
                    onSubmitted: (value) =>
                        setState(() => this.date = value),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Institution Address:',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: dateController,
                    onChanged: (value) => setState(() => this.date = value),
                    onSubmitted: (value) =>
                        setState(() => this.date = value),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'School Fees:*',
                    ),
                  ),
                ),
                Container(
                    // width: 50,
                    alignment: Alignment.centerRight,
                    // height: 50,
                    // margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.green,
                      child: Text('Next'),
                      //call the API
                      onPressed: () {
                        // if(dateController.text.isEmpty || yearController.text.isEmpty) {
                        //   print('Date and Year is required');
                        // } else {
                        //   print('Date: ${date}');
                        //   print('Year: ${year}');
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => StatementOfIncome()));
                        // }
                      },
                    ),
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    // height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.green,
                      child: Text('Previous'),
                      //call the API
                      onPressed: () {
                        // if(dateController.text.isEmpty || yearController.text.isEmpty) {
                        //   print('Date and Year is required');
                        // } else {
                        //   print('Date: ${date}');
                        //   print('Year: ${year}');
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SpouseDetails()));
                        // }
                      },
                    )
                ),
              ],
            )
        )
    );
  }
} // Retrieve eTCC Ends
