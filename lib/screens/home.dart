import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:savannah_ui/screens/details.dart';
import 'package:savannah_ui/screens/new.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('images/user.jpg'),
              radius: 23,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 10, left: 20),
              child: Text(
                'Make your next\ntrip a dream',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 10),
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
              padding: EdgeInsets.only(
                top: 25,
              ),
              child: Container(
                height: 400,
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
                            margin: EdgeInsets.only(left: 20),
                            height: 320,
                            width: 250,
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
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'An experience that can never be \nforgotten',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
               
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Details();
                              }),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 20),
                           height: 320,
                            width: 250,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    'images/elephant1.jpg',
                                  ),
                                  fit: BoxFit.fitWidth),
                              color: Colors.blue,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          'Exotic Elephants',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Let the beauty in these exotic creatures',
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                    Container(
                      width: 20,
                      height: 10,
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
            icon: Icon(Icons.map, color: Colors.grey, size: 19),
            title: Text(
              '',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.image,
              color: Colors.grey,
              size: 19,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.heart,
              color: Colors.grey,
              size: 19,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_today,
              color: Colors.grey,
              size: 19,
            ),
            title: Text(''),
          ),
        ],
      ),
    );
  }
}
