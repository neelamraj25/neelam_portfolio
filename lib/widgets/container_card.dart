import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:developer';

import '../theme/app_theme.dart';
import '../widgets/text_pairs.dart';

class ContainerCard {
  Widget type1({
    required String title,
    required String description,
    required String image,
    required String message,
    required Uri url,
    String? imageUrl,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: AppThemeData.cardGrey,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(image, height: 70.0, width: 70.0),
                const SizedBox(height: 20.0),
                SelectableText(
                  title,
                  style: TextStyle(
                    fontSize:
                        AppThemeData.darkTheme.textTheme.titleMedium!.fontSize,
                    fontWeight: AppThemeData
                        .darkTheme.textTheme.headlineSmall!.fontWeight,
                    color: AppThemeData.textWhite,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            SelectableText(description,
                style: AppThemeData.darkTheme.textTheme.labelLarge),
            // const SizedBox(height: 20.0),
            // ButtonTextSmall(
            //   text: 'View More >>',
            //   message: message,
            //   url: url,
            // ),
          ],
        ),
      ),
    );
  }

  Widget type2({
    required String image,
    required String title,
    required List values,
    required String message,
    required Uri url,
    String? imageUrl,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: AppThemeData.cardGrey,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                imageUrl != null
                    ? Image.network(
                        imageUrl,
                        height: 70.0,
                      )
                    : Image.asset('assets/images/$image.png', height: 70.0),
                const SizedBox(height: 20.0),
                SelectableText(title,
                    style: TextStyle(
                      fontSize: AppThemeData
                          .darkTheme.textTheme.titleMedium!.fontSize,
                      fontWeight: AppThemeData
                          .darkTheme.textTheme.headlineSmall!.fontWeight,
                      color: AppThemeData.textPrimary,
                    )),
                const SizedBox(height: 10.0),
                TextPairs().type2(
                  title: values[0],
                  value1: values[1],
                  value2: values[2],
                  isThreeLines: false,
                ),
                const SizedBox(height: 10.0),
                TextPairs().type2(
                  title: values[3],
                  value1: values[4],
                  value2: values[5],
                  isThreeLines: false,
                ),
                const SizedBox(height: 10.0),
                TextPairs().type2(
                  title: values[6],
                  value1: values[7],
                  value2: values[8],
                  isThreeLines: false,
                ),
              ],
            ),
            // const SizedBox(height: 20.0),
            // ButtonTextSmall(
            //   text: 'View More >>',
            //   message: message,
            //   url: url,
            // ),
          ],
        ),
      ),
    );
  }

  Widget type3({
     String? image,
    required String title,
    required String role,
    required String years,
    required String values,
    required String message,
    required Uri url,
    required bool isButtonEnabled,
    String? imageUrl,
    bool? isShowRole,
    Function? onTap,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: AppThemeData.cardGrey,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // imageUrl != null
                //     ? Image.network(
                //         imageUrl,
                //         height: 70.0,
                //       )
                //     :
                // Image.asset('assets/images/$image',
                //     height: 70.0, color: Colors.white),

                SelectableText(title,
                    style: TextStyle(
                      fontSize: AppThemeData
                          .darkTheme.textTheme.titleMedium!.fontSize,
                      fontWeight: AppThemeData
                          .darkTheme.textTheme.headlineSmall!.fontWeight,
                      color: AppThemeData.textPrimary,
                    )),
                const SizedBox(height: 10.0),
                isShowRole == true
                    ? SelectableText(values,
                        style: AppThemeData.darkTheme.textTheme.labelLarge)
                    : TextPairs().type2(
                        title: role,
                        value1: years,
                        value2: values,
                        isThreeLines: true,
                      ),
              ],
            ),
            // const SizedBox(height: 20.0),
            // isButtonEnabled
            //     ? InkWell(
            //         onTap: () {
            //           if (onTap != null) {
            //             onTap()!;
            //           }
            //         },
            //         child: ButtonTextSmall(
            //           text: 'View More >>',
            //           message: message,
            //           url: url,
            //         ),
            //       )
            //     : Text(
            //         'See you soon with the link :)',
            //         style: AppThemeData.darkTheme.textTheme.labelMedium,
            //       ),
          ],
        ),
      ),
    );
  }

  Widget type4({
    required String image,
    required String title,
    required String message,
    required Uri url,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Tooltip(
          message: 'Visit $message',
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () async {
                if (!await launchUrl(url)) {
                  throw 'Could not launch $url';
                }
                log("Direct to: $url");
              },
              child: Text(
                message,
                style: TextStyle(
                  fontSize:
                      AppThemeData.darkTheme.textTheme.labelLarge!.fontSize,
                  fontWeight:
                      AppThemeData.darkTheme.textTheme.labelLarge!.fontWeight,
                  color: AppThemeData.textWhite,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget type5({
    required BuildContext context,
    required String image,
    required String title,
    required String description,
    required String role,
    required String years,
    required String values,
    required String message,
    required Uri url,
    required bool isButtonEnabled,
    String? imageUrl,
    bool? isShowRole,
    Function? onTap,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: AppThemeData.cardGrey,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // imageUrl != null
                //     ? Image.network(
                //         imageUrl,
                //         height: 70.0,
                //       )
                //     :
                Image.asset('assets/images/$image', height: 70.0),
                const SizedBox(height: 10.0),
                SelectableText(title,
                    style: TextStyle(
                      fontSize: AppThemeData
                          .darkTheme.textTheme.titleMedium!.fontSize,
                      fontWeight: AppThemeData
                          .darkTheme.textTheme.headlineSmall!.fontWeight,
                      color: AppThemeData.textPrimary,
                    )),
                const SizedBox(height: 10.0),
                SelectableText(description,
                    style: AppThemeData.darkTheme.textTheme.labelLarge),
                const SizedBox(height: 10.0),
                isShowRole == true
                    ? SelectableText(values,
                        style: AppThemeData.darkTheme.textTheme.labelLarge)
                    : TextPairs().type2(
                        title: role,
                        value1: years,
                        value2: values,
                        isThreeLines: true,
                      ),
              ],
            ),
            // const SizedBox(height: 20.0),
            // isButtonEnabled
            //     ? InkWell(
            //         onTap: () {
            //           if (onTap != null) {
            //             onTap()!;
            //           }
            //         },
            //         child: Text(
            //           // text,
            //           'View More >>',
            //           style: Theme.of(context).textTheme.labelMedium,
            //         ),
            //       )
            //     : Text(
            //         'See you soon with the link :)',
            //         style: AppThemeData.darkTheme.textTheme.labelMedium,
            //       ),
          ],
        ),
      ),
    );
  }

  // repeat for image
  Widget type6({
    required String image,
    required String title,
    required String role,
    required String years,
    required String values,
    required String message,
    required Uri url,
    required bool isButtonEnabled,
    String? imageUrl,
    bool? isShowRole,
    Function? onTap,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: AppThemeData.cardGrey,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // imageUrl != null
                //     ? Image.network(
                //         imageUrl,
                //         height: 70.0,
                //       )
                //     :

                ClipRRect(
                  borderRadius: BorderRadius.circular(100.0),
                  child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: Image.asset('assets/images/$image',
                          width: double.infinity,
                          height: 70,
                          fit: BoxFit.fitWidth)),
                ),

                const SizedBox(height: 20.0),

                SelectableText(title,
                    style: TextStyle(
                      fontSize: AppThemeData
                          .darkTheme.textTheme.titleMedium!.fontSize,
                      fontWeight: AppThemeData
                          .darkTheme.textTheme.headlineSmall!.fontWeight,
                      color: AppThemeData.textPrimary,
                    )),
                const SizedBox(height: 10.0),
                isShowRole == true
                    ? SelectableText(values,
                        style: AppThemeData.darkTheme.textTheme.labelLarge)
                    : TextPairs().type2(
                        title: role,
                        value1: years,
                        value2: values,
                        isThreeLines: true,
                      ),
              ],
            ),
            // const SizedBox(height: 20.0),
            // isButtonEnabled
            //     ? InkWell(
            //         onTap: () {
            //           if (onTap != null) {
            //             onTap()!;
            //           }
            //         },
            //         child: ButtonTextSmall(
            //           text: 'View More >>',
            //           message: message,
            //           url: url,
            //         ),
            //       )
            //     : Text(
            //         'See you soon with the link :)',
            //         style: AppThemeData.darkTheme.textTheme.labelMedium,
            //       ),
          ],
        ),
      ),
    );
  }

  Widget type7({
    required String image,
    required String title,
    required List values,
    required String message,
    required Uri url,
    String? imageUrl,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: AppThemeData.cardGrey,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // imageUrl != null
                //     ? Image.network(
                //         imageUrl,
                //         height: 70.0,
                //       )

                ClipRRect(
                  borderRadius: BorderRadius.circular(100.0),
                  child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: Image.asset('assets/images/$image',
                          width: double.infinity,
                          height: 70,
                          fit: BoxFit.fitWidth)),
                ),
                const SizedBox(height: 20.0),
                SelectableText(title,
                    style: TextStyle(
                      fontSize: AppThemeData
                          .darkTheme.textTheme.titleMedium!.fontSize,
                      fontWeight: AppThemeData
                          .darkTheme.textTheme.headlineSmall!.fontWeight,
                      color: AppThemeData.textPrimary,
                    )),
                const SizedBox(height: 10.0),
                TextPairs().type2(
                  title: values[0],
                  value1: values[1],
                  value2: values[2],
                  isThreeLines: false,
                ),
                const SizedBox(height: 10.0),
                TextPairs().type2(
                  title: values[3],
                  value1: values[4],
                  value2: values[5],
                  isThreeLines: false,
                ),
                const SizedBox(height: 10.0),
                TextPairs().type2(
                  title: values[6],
                  value1: values[7],
                  value2: values[8],
                  isThreeLines: false,
                ),
              ],
            ),
            // const SizedBox(height: 20.0),
            // ButtonTextSmall(
            //   text: 'View More >>',
            //   message: message,
            //   url: url,
            // ),
          ],
        ),
      ),
    );
  }
}
