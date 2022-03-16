import 'package:fct_irs/pages/spouse_details.dart';
import 'package:fct_irs/widget/navigation_drawer_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Declaration(),
  ));
}

//Login Starts
class Declaration extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Declaration> {

  //checkbox method
  bool isChecked = false;
  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.green;
    }
    return Colors.green;
  } //checkbox method ends

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
                      'PENALTY FOR DEFAULT',
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    )
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Please note that in accordance with the relevant laws, "
                          "making false statements and returns or unlawful refusal/neglect "
                          "to pay accurate tax will attract fine or imprisonment or both.",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                    )
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'DECLARATION (MUST BE CHECKED)',
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    )
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "I hereby declare that the information supplied in this form to the best"
                          " of my knowledge and belief contains correct and complete statement of"
                          " the amount of income from all sources.I understand that I may have to pay "
                          "financial penalties and face prosecution if I give false information *",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                    )
                ),
                Container(
                  child: Checkbox(
                    checkColor: Colors.white,
                    fillColor: MaterialStateProperty.resolveWith(getColor),
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
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
                      child: Text('Save and Exit'),
                      //call the API for the retrieve eTCC logic
                      onPressed: () {
                        // if(dateController.text.isEmpty || yearController.text.isEmpty) {
                        //   print('Date and Year is required');
                        // } else {
                        //   print('Date: ${date}');
                        //   print('Year: ${year}');
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SpouseDetails()));
                        //
                        // }
                      },
                    )
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
                      child: Text('Submit your Filing for Approval'),
                      //call the API for the retrieve eTCC logic
                      onPressed: () {
                        // if(dateController.text.isEmpty || yearController.text.isEmpty) {
                        //   print('Date and Year is required');
                        // } else {
                        //   print('Date: ${date}');
                        //   print('Year: ${year}');
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SpouseDetails()));
                        //
                        // }
                      },
                    ),
                ),
              ],
            ),
        ),
    );
  }
} // Retrieve eTCC Ends
