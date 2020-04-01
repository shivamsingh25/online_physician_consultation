import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Online Physician Consultation App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<String> images = [
    "assets/images/cough.png",
    "assets/images/diabetes.png",
    "assets/images/heart.png"
  ];

  List<String> titles = ["Cough\n& Cold", "Diabetes\nCare", "Heart\nHealth"];

  List<int> color = [0xffe090c9, 0xfffbba7b, 0xfff59482];

  List<Widget> services() {
    List<Widget> serviceList = new List();

    for(int i = 0; i < 3; i++){
      var serviceItem = Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: EdgeInsets.only(bottom: 100.0, left: 20.0),
          child: Container(
            width: 150.0,
            height: 220.0,
            decoration: BoxDecoration(
              color: Color(color[i]),
              borderRadius: BorderRadius.circular(20.0)
            ),
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: 20.0,
                  top: 35.0,
                  child: Text(
                    titles[i],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0
                    ),
                  ),
                ),
                Positioned(
                  right: -10, bottom: -1,
                  child: Image.asset(
                    images[i],
                    height: 100.0
                  ),
                ),
              ],
            ),
          ),
        ),
      );
      serviceList.add(serviceItem);
    }
    return serviceList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              child: Padding(
                padding: EdgeInsets.only(top: 40.0, left: 30.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Icon(
                    Icons.sort,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(
              child: Padding(
                padding: EdgeInsets.only(top: 40.0, left: 30.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Online Doctor\nConsultation",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 40.0
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              child: Padding(
                padding: EdgeInsets.only(top: 50.0, left: 30.0, right: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 0.0,
                        style: BorderStyle.none
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                    hintText: 'Search'
                  ),
                ),
              ),
            ),
            SizedBox(
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 50.0, left: 30.0),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Choose\na category",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 26.0,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 50.0, left: 70.0),
                    child: Row(
                      children: <Widget>[
                        FlatButton(
                          child: Text(
                            "Adults",
                            style: TextStyle(
                              color: Color(0xffe7b281),
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          color: Color(0xfffff0e5),
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.transparent)
                          ),
                          onPressed: () {},
                        ),
                        SizedBox(width: 10,),
                        FlatButton(
                          child: Text(
                            "Children",
                            style: TextStyle(
                              color: Color(0xffb8b8b6)
                            ),
                          ),
                          color: Color(0xfff6f6f4),
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.transparent)
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Container(
              height: 350.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: services()
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Thank you for Watching..
// Like Share & subscribe -> Shivam SR