import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:robustremedy/themes/light_color.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PaymentOptionScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentOptionScreen> {
  int selectedRadioTile, selectedRadio;

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
    selectedRadioTile = 0;
  }

  setSelectedRadioTile(int val) {
    setState(() {
      selectedRadioTile = val;
      print(selectedRadioTile);
    });
  }

  getStringValues() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //Return String

    String user_id = prefs.getString('id');
    return user_id;
  }



  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(

      appBar: AppBar(title: Text("Payment"),),
      body: SingleChildScrollView(
          child: Column(children: <Widget>[
        Container(
          child: Column(children: <Widget>[
            Container(
                height: height ,
                child: Column(children: <Widget>[

            Card(
                child:RadioListTile(
                    value: 1,
                    groupValue: selectedRadioTile,
                    title:Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[

                          Text(
                            "Credit Card",
                            style: TextStyle(
                                fontSize: 18,
                                color: LightColor.midnightBlue,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            height: 50,width: 70,
                            alignment: Alignment.topRight,
                            child:Image.asset("assets/credit_card.png",height: 60,width: 120,),),]),
                    // subtitle: Text("Radio 2 Subtitle"),
                    onChanged: (val) {
                      print("Radio Tile pressed $val");
                      setSelectedRadioTile(val);
                    },
                    activeColor: LightColor.midnightBlue,

                    selected: false,
                  )),
                Card(
                    child: RadioListTile(
                    value: 2,
                    groupValue: selectedRadioTile,
                    title:Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[

                          Text(
                            "Debit Card",
                            style: TextStyle(
                                fontSize: 18,
                                color: LightColor.midnightBlue,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            height: 50,width: 70,
                            alignment: Alignment.topRight,
                            child:Image.asset("assets/debit_card.png",height: 60,width: 120,),),]),
                    // subtitle: Text("Radio 2 Subtitle"),
                    onChanged: (val) {
                      print("Radio Tile pressed $val");
                      setSelectedRadioTile(val);
                    },
                    activeColor: LightColor.midnightBlue,

                    selected: false,
                  )),
                    Card(
                        child: RadioListTile(
                    value: 4,
                    groupValue: selectedRadioTile,
                    title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[

                        Text(
                      "Paypal",
                      style: TextStyle(
                          fontSize: 18,
                          color: LightColor.midnightBlue,
                          fontWeight: FontWeight.bold),
                    ),
                        Container(
                          height: 50,width: 70,
                          alignment: Alignment.topRight,
                          child:Image.asset("assets/paypal.png",height: 60,width: 120,),),]),
                    // subtitle: Text("Radio 2 Subtitle"),
                    onChanged: (val) {
                      print("Radio Tile pressed $val");
                      setSelectedRadioTile(val);
                    },
                    activeColor: LightColor.midnightBlue,

                    selected: false,
                  )),
                ])),
          ]),
        ),
      ])),
      floatingActionButton: Container(
          height: 50.0,
          width: 150.0,
          //child: FittedBox(
          child: FloatingActionButton.extended(
            //  icon: Icon(Icons.add_shopping_cart),
            //  label: Text("Add to Cart"),
            backgroundColor: LightColor.yellowColor,
            onPressed: () {},
            // icon: Icon(Icons.save),
            label: Center(
                child: Text(
              "Confirm",
              style: TextStyle(
                  fontSize: 18,
                  color: LightColor.midnightBlue,
                  fontWeight: FontWeight.bold),
            )),
          )),
    );
  }
}
