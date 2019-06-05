import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AspectRatioDemo()
        ],
      ),
    );
  }
}

class AspectRatioDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return AspectRatio(
            aspectRatio: 16/9,
            child: Container(
              color: Color.fromRGBO(3, 54, 255, 1.0),
            )
          );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon, {this.size = 32.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(icon, size: size, color: Colors.white),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}


class StackDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Stack(
            alignment: Alignment.topLeft,
            children: <Widget>[
              SizedBox(
                width: 200,
                height: 300,
                child: Container(
                  alignment: Alignment(0, -0.9),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(3, 54, 255, 1.0),
                    borderRadius: BorderRadius.circular(8.0),
                  ),

                ),
              ),
              SizedBox(
                height: 32,
              ),
              SizedBox(
                width: 100,
                height: 100,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(3, 54, 255, 1.0),
                    // borderRadius: BorderRadius.circular(8.0),
                    shape: BoxShape.circle,
                    gradient: RadialGradient(
                      colors: [
                        Color.fromRGBO(7, 102, 255, 1),
                        Color.fromRGBO(3, 54, 255, 1),

                      ]
                    )
                  ),
                  child: Icon(
                    Icons.brightness_2,
                    color: Colors.white,
                    size: 32.0,
                  ),
                ),
              ),
              Positioned(
                right: 20,
                top: 20,
                child: Icon(
                    Icons.ac_unit,
                    color: Colors.white,
                    size: 9.0,
                  ),
              ),
              Positioned(
                right: 50,
                top: 90,
                child: Icon(
                    Icons.ac_unit,
                    color: Colors.white,
                    size: 10.0,
                  ),
              ),
              Positioned(
                right: 80,
                top: 70,
                child: Icon(
                    Icons.ac_unit,
                    color: Colors.white,
                    size: 20.0,
                  ),
              ),
              Positioned(
                right: 100,
                top: 210,
                child: Icon(
                    Icons.ac_unit,
                    color: Colors.white,
                    size: 14.0,
                  ),
              ),
              Positioned(
                right: 90,
                top: 150,
                child: Icon(
                    Icons.ac_unit,
                    color: Colors.white,
                  ),
              ),
              Positioned(
                right: 100,
                top: 160,
                child: Icon(
                    Icons.ac_unit,
                    color: Colors.white,
                    size: 30,
                  ),
              ),
              Positioned(
                right: 100,
                top: 80,
                child: Icon(
                    Icons.ac_unit,
                    color: Colors.white,
                  ),
              ),
              Positioned(
                right: 10,
                top: 120,
                child: Icon(
                    Icons.ac_unit,
                    color: Colors.white,
                  ),
              ),
              Positioned(
                right: 20,
                top: 120,
                child: Icon(
                    Icons.ac_unit,
                    color: Colors.white,
                  ),
              ),
              Positioned(
                right: 50,
                top: 220,
                child: Icon(
                    Icons.ac_unit,
                    color: Colors.white,
                  ),
              ),
            ],
          );
  }
}