import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'home_controller.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController _con = HomeController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SchedulerBinding.instance?.addPostFrameCallback((timeStamp) {
      _con.init(context, refresh);
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: const Color(0xFFF6F6F6),
        key: _con.key,
        body: SafeArea(
          child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text('Hello world'),
              ],
            ),
          ),
        )
    );
  }

  void refresh(){
    setState(() {});
  }

  @override
  void dispose() {
    //TODO: IMPLEMENT DISPOSE TO YOUR LISTENERS
    super.dispose();
  }
}