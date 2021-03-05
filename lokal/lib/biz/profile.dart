import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: getBody(),
    );
  }

  Widget getBody() {
    return ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/back.png'),
                          fit: BoxFit.contain),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  RichText(
                    text: TextSpan(
                      text: "Edit Info",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 125,
                  ),
                  ButtonTheme(
                      height: 40,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.white)),
                        onPressed: () {},
                        elevation: 0,
                        color: Colors.white,
                        textColor: Color(0xff96BE4B),
                        child: Text("SAVE", style: TextStyle(fontSize: 17)),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonTheme(
                    height: 60,
                    minWidth: 205,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          //borderRadius: BorderRadius.,
                          side: BorderSide(color: Colors.white)),
                      onPressed: () {},
                      elevation: 5,
                      color: Colors.white,
                      textColor: Color(0xff96BE4B),
                      child: Text("EDIT", style: TextStyle(fontSize: 17)),
                    )),
                ButtonTheme(
                    height: 60,
                    minWidth: 205,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          //borderRadius: BorderRadius.,
                          side: BorderSide(color: Colors.white)),
                      onPressed: () {},
                      elevation: 5,
                      color: Colors.white,
                      textColor: Colors.grey,
                      child: Text("PREVIEW", style: TextStyle(fontSize: 17)),
                    ))
              ],
            ),
            SizedBox(
              height: 30,
            ),
            EditInfo()
          ],
        )
      ],
    );
  }

  // ignore: non_constant_identifier_names
  Widget EditInfo() {
    return Column(
      children: [
        InfoBox(
            title: "About Us",
            hinttext: "A short description about your company",
            type: true),
        InfoBox(
            title: "Your Genre",
            hinttext: "What is are the sub-genres that your company service to",
            type: true),
        InfoBox(
            title: "Price Range",
            hinttext: "Choose a price range",
            type: false),
        InfoBox(title: "Address", hinttext: "Add address", type: false),
        InfoBox(
            title: "Services Offered during COVID-19?",
            hinttext: "Choose from the provided options",
            type: false),
        InfoBox(
            title: "Attach Menu Options",
            hinttext: "Choose from the provided options",
            type: false),
        InfoBox(
            title: "Attach Any Promotions",
            hinttext: "Choose from the provided options",
            type: false),
        InfoBox(
            title: "Add Any Additional Links Here",
            hinttext: "Choose from the provided options",
            type: false),
        InfoBox(
            title: "Add Anything Else",
            hinttext: "Choose from the provided options",
            type: false),
      ],
    );
  }

  // ignore: non_constant_identifier_names
  Widget InfoBox({String title, String hinttext, bool type}) {
    // if textbox
    // remove second options after
    if (type || !type) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                text: title,
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
            ),
            TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
                  hintText: hinttext,
                )),
            SizedBox(
              height: 20,
            )
          ],
        ),
      );
    }
    // if select box
    return Column(
      children: [
        // todo, if u have time
      ],
    );
  }
}