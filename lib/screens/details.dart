import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            ShaderMask(
                shaderCallback: (rect) {
                  return LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.black, Colors.transparent])
                      .createShader(
                          Rect.fromLTRB(0, 0, rect.width, rect.height));
                },
                blendMode: BlendMode.dstIn,
                child: Container(
                  height: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/elephant1.jpg'),
                          fit: BoxFit.fitHeight)),
                )),
            Container(
              margin: EdgeInsets.only(top: 10, left: 20),
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
                top: 380,
                left: 20,
              ),
              child: Text('Exotic Elephants',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      height: 1.5,
                      fontWeight: FontWeight.w600)),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              margin: EdgeInsets.only(top: 420, left: 20),
              child: Text(
                  'dataFugiat officia sunt consectetur culpa nulla pariatur nisi. Quis consequat proident cillum' +
                      'voluptate enim adipisicing magna ea nulla \nex eiusmod elit eiusmod consequat. Ipsum labore cillum nostrud sint eiusmod quis id culpa in voluptate in duis anim.',
                  style: TextStyle(
                      color: Colors.white, fontSize: 16, height: 1.5)),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 200,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadiusDirectional.circular(15)),
              margin: EdgeInsets.only(
                top: 520,
                left: 20,
              ),
              child: Center(
                child: Text('Visit',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
