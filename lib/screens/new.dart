import 'package:flutter/material.dart';

class New extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            child: Stack(children: <Widget>[
                         Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/main.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                        right: 100,
                        bottom: 10,
                      ),
                      child: Text(
                        'Dreaming Tanzania',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 120, bottom: 30),
                      child: Text(
                        'Four days in contact with the\nnatural wonders of tanzania',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, top: 10),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.30),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  iconSize: 20,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 280,
                  top: 220,
                ),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.30),
                        spreadRadius: 0.2,
                        blurRadius: 6.5)
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: IconButton(
                  icon: Icon(Icons.arrow_forward),
                  iconSize: 20,
                  onPressed: () {},
                ),
              ),
            ]),
          ),
          Container(
            margin: EdgeInsets.only(top: 30, left: 20),
            child: Text(
              'Handpicked Experiences',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 18, top: 20),
            height: 220,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      height: 150,
                      width: 230,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/giraffe2.jpg'),
                            fit: BoxFit.fitHeight),
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 60),
                      child: Text(
                        'Serengeti five days trip',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 60),
                      child: Text(
                        'Five days among the most beautiful\nparks in tanzania',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: <Widget>[
                    Container(
                      height: 150,
                      width: 230,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/giraffe1.jpg'),
                            fit: BoxFit.fitHeight),
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 90),
                      child: Text(
                        'Monkey Sanctuary',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 80),
                      child: Text(
                        'Live and see the most beautiful\nmonkeys in tanzania',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 15),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 18),
            child: Text(
              'People Choice',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 25,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 18, top: 20),
            height: 220,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      height: 150,
                      width: 230,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'images/elephant1.jpg',
                          ),
                          fit: BoxFit.fitWidth,
                        ),
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 60),
                      child: Text(
                        'Serengeti five days trip',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 60),
                      child: Text(
                        'Five days among the most beautiful\nparks in tanzania',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: <Widget>[
                    Container(
                      height: 150,
                      width: 230,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/main.jpg'),
                          fit: BoxFit.fitWidth,
                        ),
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 90),
                      child: Text(
                        'Monkey Sanctuary',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 80),
                      child: Text(
                        'Live and see the most beautiful\nmonkeys in tanzania',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 15),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
