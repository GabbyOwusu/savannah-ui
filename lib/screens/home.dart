import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:savannah_ui/screens/new.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 250, top: 20),
              child: CircleAvatar(
                backgroundImage: AssetImage('images/user.jpg'),
                radius: 23,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 150, top: 30),
              child: Text(
                'Make your next\ntrip a dream',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(
                20,
              ),
              child: Container(
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(230, 227, 227, 10),
                    contentPadding: EdgeInsets.only(left: 20),
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(
                        right: 0,
                      ),
                      child: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    ),
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    hintText: 'Where your dream could start?',
                    hintStyle: TextStyle(
                      fontSize: 17,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 25, left: 25, right: 10),
              child: Container(
                height: 290,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return New();
                              }),
                            );
                          },
                          child: Container(
                            height: 220,
                            width: 170,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    'images/main.jpg',
                                  ),
                                  fit: BoxFit.fitHeight),
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          'Unforgettable Safari',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'An experience that cannot\nbe forgotten',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 220,
                          width: 180,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  'images/elephant1.jpg',
                                ),
                                fit: BoxFit.fitWidth),
                            color: Colors.blue,
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          'Waterfalls Around',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Let the waterfalls show\nyou thier beauty and',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.map,
              color: Colors.grey,
              size: 25,
            ),
            title: Text(
              '',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.image,
              color: Colors.grey,
              size: 25,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.heart,
              color: Colors.grey,
              size: 25,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_today,
              color: Colors.grey,
              size: 25,
            ),
            title: Text(''),
          ),
        ],
      ),
    );
  }
}
