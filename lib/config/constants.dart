import 'package:flutter/material.dart';

const PROFILE_LINKEDIN = 'https://www.linkedin.com/in/huzaifasaeed00/';
const PROFILE_GITHUB = 'https://github.com/huzaifasaeed/';
const PROFILE_TWITTER = 'https://twitter.com/huzaifi__';

GlobalKey<ScaffoldState> scaffoldState = GlobalKey();

void showSnackBar(String content) {
  scaffoldState.currentState.showSnackBar(SnackBar(
    content: Text(
      content,
      textAlign: TextAlign.center,
    ),
    duration: Duration(milliseconds: 1500),
  ));
}
