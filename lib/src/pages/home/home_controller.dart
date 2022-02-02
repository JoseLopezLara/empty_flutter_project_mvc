import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class HomeController {
  ///Use to MVC
  late BuildContext context;
  late Function refresh;
  GlobalKey<ScaffoldState> key = new GlobalKey<ScaffoldState>();

  ///Providers
  ///Subscriptions/Listeners
  ///Variables
  ///Controllers

  ///Init the providers and run the initial methods and functions
  ///Receives:
  ///--> BuildContext
  ///--> Function refresh (Takes care of update the screen)
  ///Returns: Future
  init(BuildContext context, Function refresh) {
    developer.log('--> RUN: init', name: 'login_controller');


    this.context = context;
    this.refresh = refresh;

    refresh();
    firstAction();
  }

  firstAction() {

  }


  void dispose() {
    //TODO: IMPLEMENT DISPOSE TO YOUR LISTENERS
  }

}