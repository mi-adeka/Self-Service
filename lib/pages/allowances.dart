import 'package:fct_irs/pages/declaration.dart';
import 'package:fct_irs/widget/navigation_drawer_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Allowances(),
  ));
}

//Login Starts
class Allowances extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Allowances> {
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
                      'PART D: ALLOWANCES FOR LIFE ASSURANCE, GRATUITIES, NHIS AND PENSION CONTRIBUTION (100% of sum paid)',
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
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
                      labelText: 'Contribution Source:*',
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
                      labelText: 'Amount Per Annum(₦):*',
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
                      labelText: 'Remark:',
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
                            builder: (context) => Declaration()));
                        //
                        // }
                      },
                    )),
              ],
            )));
  }
} // Retrieve eTCC Ends
