import 'package:fct_irs/pages/allowances.dart';
import 'package:fct_irs/widget/navigation_drawer_widget.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    home: BenefitsInKind(),
  ));
}

//Login Starts
class BenefitsInKind extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<BenefitsInKind> {
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
                      'PART C: BENEFITS IN KIND',
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    )),
                Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "A: Residential Address",
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
                      labelText: '1. As at 1st January:',
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
                      labelText: 'Changes during the year:',
                    ),
                  ),
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "b. Name of Domestic Servants (e.g. Maids, Drivers, Gardener, Watchmen, Cooks, Stewards, Cleaners etc)",
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
                    controller: dateController,
                    onChanged: (value) => setState(() => this.date = value),
                    onSubmitted: (value) =>
                        setState(() => this.date = value),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'DOB:',
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
                      labelText: 'Address:*',
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
                      labelText: 'Amount:*',
                    ),
                  ),
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "c. Vehicle(s)",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                    )
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
                      labelText: 'Date of Purchase:*',
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
                      labelText: 'Cost:',
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
                      labelText: 'Brand:',
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
                      labelText: 'Model:',
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
                      labelText: 'Year:*',
                    ),
                  ),
                ),
                Container(
                    height: 50,
                    alignment: Alignment.centerRight,
                    // width: 20,
                    //margin: EdgeInsets.fromLTRB(200, 40, 0, 0),
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.green,
                      child: Text('Next'),
                      //call the API for the retrieve eTCC logic
                      onPressed: () {
                        // if(dateController.text.isEmpty || yearController.text.isEmpty) {
                        //   print('Date and Year is required');
                        // } else {
                        //   print('Date: ${date}');
                        //   print('Year: ${year}');
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Allowances()));
                        //
                        // }
                      },
                    )),
              ],
            )));
  }
} // Retrieve eTCC Ends
