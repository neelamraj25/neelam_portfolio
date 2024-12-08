import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:developer';

class ButtonIcon {
  final String name;
  final Uri url;
  final double height;
  final double width;

  ButtonIcon(
      {required this.name,
      required this.url,
      this.height = 30.0,
      this.width = 30.0});

  Widget returnButton() {
    return MouseRegion(
      
      cursor: SystemMouseCursors.click,
      child: InkWell(
        onTap: () async {
          try {
            if (await canLaunchUrl(url)) {
              await launchUrl(
                url,
                mode: LaunchMode
                    .externalApplication, // Opens the URL in a new browser tab
              );
            } else {
              log('Could not launch $url');
            }
          } catch (e) {
            log('Something went wrong: $e');
          }
        },
        child: Tooltip(
          message: url.toString(),
          child: Image.asset('assets/icons/$name.png',
              height: height, width: width),
        ),
      ),
    );
  }
}
