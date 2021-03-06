import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  // must contain EVEN number of elements
  final categories = [
    "Arts & Crafts",
    "Restaurants",
    "Grocers",
    "Entertainment",
    "Bakeries",
    "Thrift Stores"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: getBody(context),
    );
  }

  Widget getBody(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ListView(
      children: [
        //SizedBox(),
        Container(
          width: size.width,
          child: Image(image: AssetImage("assets/images/store-front.png")),
        ),
        SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 55.0),
          child: Column(children: [
            RichText(
              text: TextSpan(
                  text: 'Search Businesses:',
                  style: TextStyle(
                    fontSize: 29,
                    fontFamily: "SF Pro Display",
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    //color: Color(0xff96BE4B)),
                  )),
            ),
            SizedBox(
              height: 25,
            ),
            TextField(
              decoration: InputDecoration(
                  fillColor: Color(0xfff2f2f2),
                  filled: true,
                  contentPadding: new EdgeInsets.symmetric(vertical: -5),
                  prefixIcon: Icon(
                    Icons.search,
                    size: 22, // borderRadius: BorderRadius.circular(15),
                  ),
                  enabledBorder: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(25.0),
                    borderSide: BorderSide(color: Color(0xfff2f2f2)),
                  ),
                  focusedBorder: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(25.0),
                    borderSide: BorderSide(color: Color(0xfff2f2f2)),
                  ),
                  labelStyle: new TextStyle(color: Colors.green),
                  hintText: 'Search'),
            ),
            SizedBox(
              height: 25,
            ),
            SizedBox(
                height: 190,
                child: GridView.count(
                  // padding: EdgeInsets.zero,
                  crossAxisCount: 1,
                  childAspectRatio: 5,
                  mainAxisSpacing: 1,
                  children: [
                    for (int i = 0; i < categories.length; i += 2)
                      Row(children: [
                        CategoryButton(text: categories.elementAt(i)),
                        SizedBox(width: 20),
                        CategoryButton(text: categories.elementAt(i + 1))
                      ]),
                  ],
                )),
            SizedBox(height: 30),
            Column(
              children: [
                ButtonTheme(
                  height: 40,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Color(0xffAFD755))),
                    onPressed: () {},
                    elevation: 5,
                    color: Color(0xffAFD755),
                    textColor: Colors.white,
                    child: Text("Confirm", style: TextStyle(fontSize: 17)),
                  ),
                ),
                SizedBox(height: 14),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    height: 1.0,
                    width: 290.0,
                    color: Color(0xffe0e0d1),
                  ),
                ),
                SizedBox(height: 12),
                CategoryButton(text: "Return")
              ],
            )
          ]),
        )
      ],
    );
  }

  // ignore: non_constant_identifier_names
  Widget CategoryButton({String text}) {
    return ButtonTheme(
        height: 40,
        child: RaisedButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: BorderSide(color: Colors.white)),
          onPressed: () {},
          elevation: 5,
          color: Colors.white,
          textColor: Color(0xff96BE4B),
          child: Text(text, style: TextStyle(fontSize: 17)),
        ));
  }
}
