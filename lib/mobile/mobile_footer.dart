import 'package:flutter/material.dart';
import 'package:neelam_rajpoot/statics/data_values.dart';
import 'package:neelam_rajpoot/theme/app_theme.dart';
import 'package:url_launcher/url_launcher.dart';

class MS8Footer extends StatelessWidget {
  const MS8Footer({Key? key}) : super(key: key);

  Widget getSourceCode(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          launchUrl(DataValues.repoURL);
        },
        child: Tooltip(
          message: DataValues.repoURL.toString(),
          child: Text(
            'Get Source Code',
            style: TextStyle(
              color: AppThemeData.textPrimary,
              fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize,
              fontWeight: Theme.of(context).textTheme.bodyMedium!.fontWeight,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppThemeData.backgroundBlack,
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          SelectableText(
            '${DataValues.appName} (v${DataValues.appVersion})',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SelectableText(
                DataValues.builtWith,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                width: 5,
              ),
              // getSourceCode(context),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: Center(
              child: SelectableText(
                DataValues.copyright,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
