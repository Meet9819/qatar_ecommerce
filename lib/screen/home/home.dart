import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:robustremedy/screen/Item_group_screen/item_main.dart';
import 'package:robustremedy/screen/home/advertise.dart';
import 'package:robustremedy/screen/home/manufacture.dart';
import 'package:robustremedy/screen/home/manufacture_grid.dart';
import 'package:robustremedy/screen/home/home_category_maingroup.dart';
import 'package:robustremedy/screen/home/summer_items.dart';
import 'package:robustremedy/screen/static/refer_earn.dart';
import 'package:robustremedy/screen/prescription/upload_prescription.dart';
import 'package:robustremedy/themes/light_color.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:http/http.dart' as http;
import 'package:share/share.dart';

class SliderGrid extends StatelessWidget {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                  padding: EdgeInsets.all(4.0),
                  alignment: Alignment.topLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Shop By Category",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      IconButton(
                        padding: EdgeInsets.all(0),
                        icon: Icon(
                          Icons.more,
                          color: LightColor.midnightBlue,
                          size: 20,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Item_main()));
                        },
                      )
                    ],
                  )),
              Container(
                //height: 175,
                constraints: BoxConstraints.expand(height: 175),
                child: ItemPage(),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white12,
                        border: Border(
                          bottom:
                              BorderSide(color: Colors.grey[100], width: 1.0),
                          top: BorderSide(color: Colors.grey[100], width: 1.0),
                        )),
                    height: 150.0,
                    child: Row(
                      children: <Widget>[

                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(top: 10.0, left: 15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Text(
                                        'Order quickly with prescription',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16.0,color: LightColor.midnightBlue),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                //finalprice=data[index].price,

                                      Text(
                                        "Upload Prescription and tell us what you need. ",
                                        style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.bold,color: LightColor.grey),
                                      ),
                                      Text(
                                        'We do the rest!',
                                        style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.bold,color: LightColor.grey),
                                      ),


                                SizedBox(height: 10),
                                ButtonTheme(
                                    minWidth: 200.0,
                                    height: 40.0,

                                    child: RaisedButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Upload_prescription()));
                                      },
                                      color: LightColor.yellowColor,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10)),
                                      child: Text("Upload",
                                          style: TextStyle(
                                              color: LightColor.midnightBlue,
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold)),
                                    )),
                                SizedBox(width: 10),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            alignment: Alignment.topRight,
                            height: 110.0,
                            width: 110.0,
                            decoration: BoxDecoration(

                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10.0),
                                    bottomRight: Radius.circular(10.0)),
                                image: DecorationImage(
                                    image: AssetImage('assets/upload.png'), fit: BoxFit.fill)),
                          ),
                        ),
                      ],
                    ),
                  )),

              SizedBox(
                height: 20,
              ),
              Container(
                // height: 130,
                constraints: BoxConstraints.expand(height: 160),
                child: Advertise(),
              ),
              Container(
                  padding: EdgeInsets.all(4.0),
                  alignment: Alignment.topLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Summer Items",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      IconButton(
                        padding: EdgeInsets.all(0),
                        icon: Icon(
                          Icons.more,
                          color: Colors.white,
                          size: 20,
                        ),
                        onPressed: () {},
                      )
                    ],
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 175,
                child: SummerItems(),
              ),

              Padding(
                  padding: EdgeInsets.all(0.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white12,
                        border: Border(
                          bottom:
                          BorderSide(color: Colors.grey[100], width: 1.0),
                          top: BorderSide(color: Colors.grey[100], width: 1.0),
                        )),
                    height: 150.0,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            alignment: Alignment.topLeft,
                            height: 110.0,
                            width: 110.0,
                            decoration: BoxDecoration(

                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10.0),
                                    bottomRight: Radius.circular(10.0)),
                                image: DecorationImage(
                                    image: AssetImage('assets/refericon.png'), fit: BoxFit.fill)),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(top: 10.0, left: 15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
    Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
                                Image.asset('assets/goldcoin.jpg',height: 60,width: 60,),
                                IconButton(
                                  icon: Icon(Icons.share, size: 30.0,),
                                  onPressed: (){
                                    final RenderBox box = context.findRenderObject();
                                    Share.share(

                                            '\n\n Shop online on Qatar’s Most trusted pharmacy with a wide collection of items ranging from personal care, Baby care, Home care products, Medical equipment & supplements we are the healthcare with best priced deals we offer Home delivery across Qatar.'+
                                            '\n\n https://www.onlinefamilypharmacy.com/ecommerce/public/productdetails.php?code=' ,
                                        subject:"this is the subject",
                                        sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
                                  },
                                ),
                                ]),
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Text(
                                        'Refer & Earn',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16.0,color: LightColor.midnightBlue),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                //finalprice=data[index].price,

                                Text(
                                  "Invite friend to increase your wallet balance. ",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,color: LightColor.grey),
                                ),

InkWell(
  onTap: (){
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => referearn()));
  },
  child: Text(
    "Know More -> ",
    style: TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.bold,color: LightColor.midnightBlue),
  ),
),



                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  )),
              Container(
                  padding: EdgeInsets.all(4.0),
                  alignment: Alignment.topLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Shop By Brand",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      IconButton(
                        padding: EdgeInsets.all(0),
                        icon: Icon(
                          Icons.more,
                          color: LightColor.midnightBlue,
                          size: 20,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BrandGrid()));
                        },
                      )
                    ],
                  )),
              Container(
                height: 180,
                child: BrandPage(),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class SliderIndicator extends AnimatedWidget {
  final PageController pageController;
  final int indicatorCount;

  SliderIndicator({this.pageController, this.indicatorCount})
      : super(listenable: pageController);
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: List<Widget>.generate(indicatorCount, buildIndicator));
  }

  Widget buildIndicator(int index) {
    final page = pageController.position.minScrollExtent == null
        ? pageController.initialPage
        : pageController.page;
    bool active = page.round() == index;
    print("build $index ${pageController.page}");
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        child: Center(
          child: Container(
              width: 20,
              height: 5,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10))),
        ),
      ),
    );
  }
}

class Job {
  final String url;

  Job({
    this.url,
  });

  factory Job.fromJson(Map<String, dynamic> json) {
    return Job(
      url: json['url'],
    );
  }
}

class GalleryDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Job>>(
      future: _fetchJobs(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Job> data = snapshot.data;
          return imageSlider(context, data);
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return CircularProgressIndicator();
      },
    );
  }

  Future<List<Job>> _fetchJobs() async {
    final jobsListAPIUrl =
        'http://sharegiants.in/ruchi/doctor_api.php?action=fetch_all';
    final response = await http.get(jobsListAPIUrl);

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((job) => new Job.fromJson(job)).toList();
    } else {
      throw Exception('Failed to load jobs from API');
    }
  }
}

Swiper imageSlider(context, data) {
  return new Swiper(
    //autoplay: true,
    itemCount: data.length,
    itemBuilder: (BuildContext context, int index) {
      return new Image.network(
        data[index].url,
        fit: BoxFit.fitWidth,
        width: 300,
      );
    },

    viewportFraction: 0.4,

    scale: 0.5,
  );
}
