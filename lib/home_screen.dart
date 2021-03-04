import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          _top(),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Favoritmu",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
                ),
                Text(
                  "Lainnya",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            height: 200.0,
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, childAspectRatio: 3 / 2),
              children: <Widget>[
                _gridItem(Icons.wb_sunny_rounded),
                _gridItem(Icons.wb_sunny_outlined),
                _gridItem(Icons.calendar_today),
                _gridItem(Icons.library_books),
                _gridItem(Icons.pan_tool_sharp),
                _gridItem(Icons.image),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: <Widget>[
                Text(
                  "Lautan Ilmu",
                  style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          _cardItem(1),
          _cardItem(2),
          _cardItem(3),
          _cardItem(4),
          _cardItem(5),
        ],
      ),
    );
  }

  _cardItem(image) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        children: <Widget>[
          Container(
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/videokajian/$image.jpg"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20.0)),
          ),
          SizedBox(width: 20.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Apa itu Salafy?",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                "Ustadz Fulan",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Tonton",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _gridItem(icon) {
    return Column(
      children: <Widget>[
        CircleAvatar(
          child: Icon(
            icon,
            size: 16.0,
            color: Colors.white,
          ),
          backgroundColor: Colors.lightGreen.withOpacity(0.9),
        ),
        SizedBox(height: 10.0),
        Text(
          "Dzikir Pagi",
          style: TextStyle(
            fontSize: 11.0,
          ),
        ),
      ],
    );
  }

  _top() {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          color: Colors.lightGreen,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
          )),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/muslim.png"),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "Ahlan wa sahlan",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          TextField(
            decoration: InputDecoration(
                hintText: "Cari",
                fillColor: Colors.white,
                filled: true,
                suffixIcon: Icon(Icons.filter_list),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0)),
          ),
        ],
      ),
    );
  }
}
