import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    var cardTextStyle = GoogleFonts.nunito(
        fontSize: 15,
        color: Color.fromRGBO(63, 63, 63, 1),
        fontWeight: FontWeight.w600);

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16.0),
            height: size.height * .2,
            decoration: BoxDecoration(
                // image: DecorationImage(
                //     alignment: Alignment.topCenter,
                //     image: AssetImage('assets/images/sunrise.png')),
                color: Colors.yellow[900],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                )),
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
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Dzikir Pagi dan Petang',
                              style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w700,
                                fontSize: 23,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Sesuai as-Sunnah",
                              style: GoogleFonts.nunito(
                                fontStyle: FontStyle.italic,
                                color: Colors.white,
                              ),
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
                                  'assets/images/pray.png',
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
                                  'assets/images/question.png',
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
