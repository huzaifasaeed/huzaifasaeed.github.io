import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/config/assets.dart';
import 'package:portfolio/widgets/project_widget.dart';

class ProjectsTab extends StatefulWidget {
  @override
  _ProjectsTabState createState() => _ProjectsTabState();
}

class _ProjectsTabState extends State<ProjectsTab> {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        return ListView(
          children: <Widget>[
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              runAlignment: WrapAlignment.center,
              alignment: WrapAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Projects',
                          style: GoogleFonts.quicksand(
                            textStyle:
                                Theme.of(context).textTheme.headline6.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 50.0,
                                    ),
                          ),
                        ),
                      ),
                      // Text(
                      //   "Some of my projects are listed here...!",
                      //   textAlign: TextAlign.center,
                      //   style: Theme.of(context).textTheme.headline6,
                      // ),
                    ],
                  ),
                ),
              ],
            ),
            ProjectWidget(
                Colors.grey.withOpacity(0.1),
                Orientation.landscape,
                "Xamarin / Flutter",
                "Kutub Khana - Free Library of Urdu Books",
                "Where you read all kind of Bestselling Urdu Books.",
                'https://play-lh.googleusercontent.com/QLd4FWCVII2izE6zHP_Ccty2tM_u5W5SnaReoJHwSdHF_Dj7ri9FLpKfC7M0_106mFU=w2880-h1398',
                'pak.kutubkhana',
                ''),
            ProjectWidget(
                Colors.white,
                Orientation.portrait,
                "Flutter",
                "iFilms - Movies & TV Series",
                "Watch Turkish Dramas in Urdu.",
                'https://play-lh.googleusercontent.com/vwP_XICB6DSqBIqd8ev5vXun_enbtl17sXeUuEAARZ2-iBo0B_BbmxNQHBLiqnfxLdM=w2880-h1444-rw',
                'com.huzaifa.ertugrul_ghazi',
                ''),
            ProjectWidget(
                Colors.grey.withOpacity(0.1),
                Orientation.landscape,
                "Flutter",
                "HD Wallpapers",
                "The most amazing app ever made for HD & 4K wallpapers.",
                'https://play-lh.googleusercontent.com/tGmONARruPpXDNBVU7VB2U1sny5ZSSHaZAjIJTKqWKME8xdScL1p71Mk4Pdenaqu1A=w2880-h1444-rw',
                'com.huzaifa.hd_wallpapers',
                ''),
            ProjectWidget(
                Colors.white,
                Orientation.portrait,
                "Android / Java",
                "All Downloader 2020",
                "TAll Social Media Downloader will let you download all those videos & images you watch on Facebook, Instagram, WhatsApp Status, Tiktok and Likee.",
                'https://play-lh.googleusercontent.com/PqkpbrfvtyMSZS8-TVmSM045F3qeKBUg7ceQdfigpyaF6iSzOV5f43dBkNi1X68Zf5a6=w2534-h1444-rw',
                'com.huzaifa.statussaver',
                ''),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.asset(
                        Assets.avatar,
                        width: 110.0,
                        height: 110.0,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Text(
                  //     'Try Venda',
                  //     style: GoogleFonts.quicksand(
                  //       textStyle:
                  //           Theme.of(context).textTheme.headline6.copyWith(
                  //                 fontWeight: FontWeight.bold,
                  //                 fontSize: 60.0,
                  //               ),
                  //     ),
                  //   ),
                  // ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "You can contact me through LIVE CHAT for your projects or any help.",
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(color: Colors.grey),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
