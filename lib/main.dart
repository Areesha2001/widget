import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(
        titleText:
            'while sleeping at home ,while working slow charger when you want to change',
        title: 'electronic newspaper',
        subTitle:
            'G-Connect to support Hyundai Motor Group s Electric car pay charging service',
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp(
      {Key? key,
      required this.titleText,
      required this.title,
      required this.subTitle})
      : super(key: key);
  final String title;
  final String titleText;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.orange.shade200,
      body: SafeArea(
        child: SizedBox(
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height/25,),

              Divider(
                height: 20,
                thickness: 1.5,
                indent: 20,
                endIndent: 20,
                color: Colors.grey,
              ),
              Container(
                margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.lightGreen,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Text(subTitle,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),),
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios_rounded,
                  color: Colors.white,),
                ],
              ),
              Divider(
                height: 20,
                thickness: 1.5,
                indent: 20,
                endIndent: 20,
                color: Colors.grey,
              ),
           SizedBox(height: height/25,),
              SizedBox(
                height: height / 5.5,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  margin: EdgeInsets.all(10),
                  color: Colors.white,
                  shadowColor: Colors.grey,
                  elevation: 5,
                  child: ListTile(
                    title: Text(
                      titleText,
                      style: TextStyle(fontSize: 25
                        ,
                      color: Colors.amber,),
                    ),
                  ),
                ),
              ),

              Container(
                color: Colors.transparent,
                 height: height / 2.5,
                child: SizedBox(

                  child: Stack(children: [
                    Positioned(
                      top: height/10,
                      left: width/2.5,
                      child: const Text(
                        '2022',
                        maxLines: 2,
                        style: TextStyle(
                          color:Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Positioned(
                      top: height/5.4,
                      left: width/6.5,
                      child: Text(
                        'Wireless ',
                        maxLines: 2,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Positioned(
                      top: height/6.5,
                      left: width/2.18,
                      child: Container(
                        color: Colors.grey,
                        width: width / 150,
                        height: height / 5,
                      ),
                    ),


                    Positioned(
                      top:height/5.5,
                      left :width/2.3,

                      child: Icon(
                        Icons.circle,
                        color: Colors.green,
                      ),
                    ),
                    Positioned(
                      top:height/3.5,
                      left :width/2.3,

                      child: Icon(
                        Icons.circle,
                        color: Colors.green,
                      ),
                    ),


                    Positioned(
                      top: height/3.5,
                      right: width/5.3,
                      child: Text(
                        'Structure',
                        maxLines: 2,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
