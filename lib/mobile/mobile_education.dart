import 'package:flutter/material.dart';
import 'package:neelam_rajpoot/statics/data_values.dart';
import 'package:neelam_rajpoot/statics/key_holders.dart';
import 'package:neelam_rajpoot/theme/app_theme.dart';
import 'package:neelam_rajpoot/widgets/container_card.dart';
import 'package:neelam_rajpoot/widgets/frame_title.dart';


class MS3Education extends StatelessWidget {
  const MS3Education({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: KeyHolders.educationKey,
      color: AppThemeData.backgroundGrey,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FrameTitle(
                title: DataValues.educationTitle,
                description: DataValues.educationDescription),
            const SizedBox(height: 30.0),
            ContainerCard().type7(
              image: 'acet.jpeg',
              title: DataValues.educationOrg1Title,
              values: [
                DataValues.educationOrg1Course1Name,
                DataValues.educationOrg1Course1Grade,
                DataValues.educationOrg1Course1Year,
                DataValues.educationOrg1Course2Name,
                DataValues.educationOrg1Course2Grade,
                DataValues.educationOrg1Course2Year,
                DataValues.educationOrg1Course3Name,
                DataValues.educationOrg1Course3Year,
                DataValues.educationOrg1Course3Year2,
              ],
              message: DataValues.linkedinURL.toString(),
              url: DataValues.linkedinURL,
            ),
           
          ],
        ),
      ),
    );
  }
}
