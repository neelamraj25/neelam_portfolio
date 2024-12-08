import 'package:flutter/material.dart';
import 'package:neelam_rajpoot/statics/data_values.dart';
import 'package:neelam_rajpoot/statics/key_holders.dart';
import 'package:neelam_rajpoot/theme/app_theme.dart';
import 'package:neelam_rajpoot/widgets/container_card.dart';
import 'package:neelam_rajpoot/widgets/frame_title.dart';

class MS100Certificate extends StatelessWidget {
  const MS100Certificate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: KeyHolders.certificateKey,
      color: AppThemeData.backgroundGrey,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FrameTitle(
                title: DataValues.certificateTitle,
                description: DataValues.certificateDescription),
            const SizedBox(height: 30.0),
               ContainerCard().type3(
              image: 'student.png',
              title: DataValues.certificateOrgTitle,
              role: DataValues.certificateOrgRole,
              years: DataValues.certificateOrgYears,
              values: DataValues.certificateOrgVales,
              message: DataValues.linkedinURL.toString(),
              url: DataValues.linkedinURL,
              isButtonEnabled: true,
            ),
            const SizedBox(height: 20.0),
            ContainerCard().type3(
              image: 'student.png',
              title: DataValues.certificateOrg1Title,
              role: DataValues.certificateOrg1Role,
              years: DataValues.certificateOrg1Years,
              values: DataValues.certificateOrg1Vales,
              message: DataValues.linkedinURL.toString(),
              url: DataValues.linkedinURL,
              isButtonEnabled: true,
            ),
            const SizedBox(height: 20.0),
            ContainerCard().type3(
              image: 'student.png',
              title: DataValues.certificateOrg2Title,
              role: DataValues.certificateOrg2Role,
              years: DataValues.certificateOrg2Years,
              values: DataValues.certificateOrg2Vales,
              message: DataValues.linkedinURL.toString(),
              url: DataValues.linkedinURL,
              isButtonEnabled: true,
            ),
            const SizedBox(height: 20.0),
            ContainerCard().type3(
              image: 'student.png',
              title: DataValues.certificateOrg3Title,
              role: DataValues.certificateOrg3Role,
              years: DataValues.certificateOrg3Years,
              values: DataValues.certificateOrg3Vales,
              message: DataValues.linkedinURL.toString(),
              url: DataValues.linkedinURL,
              isButtonEnabled: true,
            ),
            const SizedBox(height: 20.0),
            ContainerCard().type3(
              image: 'student.png',
              title: DataValues.certificateOrg4Title,
              role: DataValues.certificateOrg4Role,
              years: DataValues.certificateOrg4Years,
              values: DataValues.certificateOrg4Vales,
              message: DataValues.linkedinURL.toString(),
              url: DataValues.linkedinURL,
              isButtonEnabled: true,
            ),
          
            // const SizedBox(height: 40.0),
            // Center(
            //   child: ContainerBanner().type1(
            //       isDesktop: false,
            //       title1: DataValues.experienceBanner,
            //       title2: DataValues.experienceBannerTitle,
            //       description: DataValues.experienceBannerWeb,
            //       image: 'logo',
            //       message: 'View Toolkit',
            //       url: DataValues.toolkitURL),
            // ),
          ],
        ),
      ),
    );
  }
}
