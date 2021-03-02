import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // to get size
    var size = MediaQuery.of(context).size;

    //style
    var cardTextStyle = TextStyle(
        fontFamily: "Montserrat Reguler",
        fontSize: 15,
        color: Color.fromRGBO(63, 63, 63, 1));

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .3,
            decoration: BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment.topCenter,
                  image: AssetImage('assets/images/sunrise.png')),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 64,
                    margin: EdgeInsets.only(bottom: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 32,
                          backgroundImage: NetworkImage(
                              'https://i.pinimg.com/originals/78/07/03/78070395106fcd1c3e66e3b3810568bb.jpg'),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Ikram',
                              style: TextStyle(
                                  fontFamily: 'Montserrat Medium',
                                  color: Colors.black,
                                  fontSize: 20),
                            ),
                            Text(
                              '12345',
                              style: TextStyle(
                                  fontFamily: 'Montserrat Medium',
                                  color: Colors.black,
                                  fontSize: 14),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      primary: false,
                      crossAxisCount: 2,
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          elevation: 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                child: Image.asset(
                                  'assets/images/sunrise.png',
                                  height: 125.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text(
                                'Dzikir Pagi',
                                style: cardTextStyle,
                              ),
                            ],
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          elevation: 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                child: Image.asset(
                                  'assets/images/sunsets.png',
                                  height: 125.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text(
                                'Dzikir Petang',
                                style: cardTextStyle,
                              ),
                            ],
                          ),
                        ),

                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          elevation: 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                child: Image.asset(
                                  'assets/images/sunrise.png',
                                  height: 125.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text(
                                "Do'a-do'a Harian",
                                style: cardTextStyle,
                              ),
                            ],
                          ),
                        ),

                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          elevation: 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                child: Image.asset(
                                  'assets/images/sunrise.png',
                                  height: 125.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text(
                                'Tentang',
                                style: cardTextStyle,
                              ),
                            ],
                          ),
                        ),
                        // Container()
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
