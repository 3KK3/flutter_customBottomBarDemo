import 'package:flutter/material.dart';
import 'each_view.dart';

class CustomBottomBar extends StatefulWidget {
  @override
  _CustomBottomBarState createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {

  int _index = 0;
  List<Widget> _list = List();

  @override
  void initState() {

    _list..add(EachVeiw("home"))..add(EachVeiw("email"))..add(EachVeiw("pages"))..add(EachVeiw("airplay"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _list[_index],
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              color: Colors.white,
              onPressed: () {
                setState(() {
                  _index = 0;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.email),
              color: Colors.white,
              onPressed: () {
                setState(() {
                  _index = 1;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.pages),
              color: Colors.white,
              onPressed: () {
                setState(() {
                  _index = 2;
                });

              },
            ),
            IconButton(
              icon: Icon(Icons.airplay),
              color: Colors.white,
              onPressed: () {
                setState(() {
                  _index = 3;

                });


                },
            )
          ],

        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
            return EachVeiw("floating view");
          }));
        },
        tooltip: 'tooltip',
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),

    );
  }
}

