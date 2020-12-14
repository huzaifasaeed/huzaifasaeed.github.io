import 'package:flutter/material.dart';
import 'dart:js' as js;

import 'package:portfolio/config/assets.dart';
import 'package:portfolio/config/constants.dart';

class ProjectWidget extends StatelessWidget {
  final Orientation orientation;
  final Color color;
  final String tags;
  final String title;
  final String subtitle;
  final String image;
  final String playstore;
  final String appstore;

  ProjectWidget(this.color, this.orientation, this.tags, this.title,
      this.subtitle, this.image, this.playstore, this.appstore);

  @override
  Widget build(BuildContext context) {
    return orientation == Orientation.portrait
        ? Container(
            color: color,
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              runAlignment: WrapAlignment.center,
              alignment: WrapAlignment.center,
              runSpacing: 10.0,
              spacing: 10.0,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.height * 0.5,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            tags,
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(fontSize: 15.0, color: Colors.grey),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            title,
                            style: Theme.of(context)
                                .textTheme
                                .headline5
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            subtitle,
                            style:
                                Theme.of(context).textTheme.bodyText1.copyWith(
                                      fontSize: 18.0,
                                      height: 1.8,
                                      fontWeight: FontWeight.w300,
                                    ),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            FlatButton(
                              onPressed: () {
                                js.context.callMethod("open", [
                                  "https://play.google.com/store/apps/details?id=$playstore"
                                ]);
                              },
                              child: Image.network(
                                Assets.play_store_icon,
                                height: 100.0,
                                width: 150.0,
                              ),
                            ),
                            FlatButton(
                              onPressed: () {
                                showSnackBar("Coming Soon");
                              },
                              child: Image.network(
                                Assets.app_store_icon,
                                height: 100.0,
                                width: 150.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(
                    image,
                    fit: BoxFit.contain,
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.height * 0.4,
                  ),
                ),
              ],
            ))
        : Container(
            color: color,
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              runAlignment: WrapAlignment.center,
              alignment: WrapAlignment.center,
              runSpacing: 10.0,
              spacing: 10.0,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(
                    image,
                    fit: BoxFit.contain,
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.height * 0.5,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.height * 0.5,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            tags,
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(fontSize: 15.0, color: Colors.grey),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            title,
                            style: Theme.of(context)
                                .textTheme
                                .headline5
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            subtitle,
                            style:
                                Theme.of(context).textTheme.bodyText1.copyWith(
                                      fontSize: 18.0,
                                      height: 1.8,
                                      fontWeight: FontWeight.w300,
                                    ),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            FlatButton(
                              onPressed: () {
                                js.context.callMethod("open", [
                                  "https://play.google.com/store/apps/details?id=$playstore"
                                ]);
                              },
                              child: Image.network(
                                Assets.play_store_icon,
                                height: 100.0,
                                width: 150.0,
                              ),
                            ),
                            FlatButton(
                              onPressed: () {
                                showSnackBar("Coming Soon");
                              },
                              child: Image.network(
                                Assets.app_store_icon,
                                height: 100.0,
                                width: 150.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ));
  }
}
