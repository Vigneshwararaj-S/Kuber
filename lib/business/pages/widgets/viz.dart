/*import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

import '../add_transaction.dart';

class visual extends StatefulWidget {
  @override
  _visual createState() => _visual();
}

class _visual extends State<visual> {
  final List<String> titles = [
    "RED",
    "YELLOW",
    "CYAN",
    "BLUE",
    "GREY",
  ];

  @override
  Widget build(BuildContext context) {
    final List<Widget> images = [


      GestureDetector(
        onTap: () {
          Navigator.of(context)
              .push(
            CupertinoPageRoute(
              builder: (context) => AddExpenseNoGradient(),
            ),
          )
              .then((value) {
            setState(() {});
          });
        },
          child: Container(
          decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          ),

          ),
      ),

      GestureDetector(
        onTap: () {
          Navigator.of(context)
              .push(
            CupertinoPageRoute(
              builder: (context) => AddExpenseNoGradient(),
            ),
          )
              .then((value) {
            setState(() {});
          });
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),

        ),
      ),
      GestureDetector(
        onTap: () {
          Navigator.of(context)
              .push(
            CupertinoPageRoute(
              builder: (context) => AddExpenseNoGradient(),
            ),
          )
              .then((value) {
            setState(() {});
          });
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.cyan,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),

        ),
      ),
      GestureDetector(
        onTap: () {

          setState(() {
            Navigator.of(context)
                .push(
              CupertinoPageRoute(
                builder: (context) => AddExpenseNoGradient(),
              ),
            )
                .then((value) {
              setState(() {});
          });

          });
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),

        ),
      ),
      GestureDetector(
        onTap: () {
          print("Tapped a Container");
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),

        ),
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0.0,
        title: Text(
          'Kuber',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Expanded(
          child: GestureDetector(
            child: VerticalCardPager(
              textStyle:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              titles: titles,
              images: images,
              onPageChanged: (page) {},
              align: ALIGN.CENTER,
              onSelectedItem: (index) {},
            ),
          ),
        ),
      ),
    );
  }
}*/
import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kuber/viewings/daily.dart';
import 'package:kuber/business/staticb.dart' as Static;
import 'package:kuber/viewings/monthly.dart';
import 'package:kuber/viewings/yearly.dart';

import '../../../viewings/weekly.dart';

import '../../viewings/bdaily.dart';
import '../../viewings/bmonth.dart';
import '../../viewings/bweek.dart';
import '../../viewings/byear.dart';
import '../badd_transaction.dart';

class Viz extends StatefulWidget {
  const Viz({Key? key}) : super(key: key);

  @override
  _Viz createState() => _Viz();
}

class _Viz extends State<Viz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0.0,
      ),
      body: Center(

      ),
      floatingActionButton: FabCircularMenu(
        fabOpenColor: Static.PrimaryColor,
        fabCloseColor: Colors.white,
        ringColor: Static.PrimaryColor,
        alignment: Alignment.center,
        children: [
          InkWell(
            child: Text('Day',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),//Icon(Icons.calendar_view_day),

            onTap: (){
              Navigator.of(context)
                  .push(
                CupertinoPageRoute(
                  builder: (context) => BDaily(),
                ),
              )
                  .then((value) {
                setState(() {});
              });
            },
          ),

          InkWell(
            child: Text('Week',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            onTap: (){
              Navigator.of(context)
                  .push(
                CupertinoPageRoute(
                  builder: (context) => BWeek(),
                ),
              )
                  .then((value) {
                setState(() {});
              });
            },
          ),

          InkWell(
            child: Text('Month',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            onTap: (){
              Navigator.of(context)
                  .push(
                CupertinoPageRoute(
                  builder: (context) => BMonthly(),
                ),
              )
                  .then((value) {
                setState(() {});
              });
            },
          ),

          InkWell(
            child: Text('Year',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            onTap: (){
              Navigator.of(context)
                  .push(
                CupertinoPageRoute(
                  builder: (context) => BYearly(),
                ),
              )
                  .then((value) {
                setState(() {});
              });
            },
          ),

          InkWell(
            child: Text('Add',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            onTap: (){
              Navigator.of(context)
                  .push(
                CupertinoPageRoute(
                  builder: (context) => BAddExpenseNoGradient(),
                ),
              )
                  .then((value) {
                setState(() {});
              });
            },
          ),
        ],
      ),
    );
  }
}