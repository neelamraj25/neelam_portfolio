import 'package:flutter/material.dart';

import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/app_theme.dart';
import '../widgets/container_card.dart';
import '../widgets/frame_title.dart';

class DS100Certificate extends StatelessWidget {
  const DS100Certificate({Key? key}) : super(key: key);

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                    Expanded(
                  child: ContainerCard().type3(
                    image: 'student.png',
                    title: DataValues.certificateOrgTitle,
                    role: DataValues.certificateOrgRole,
                    years: DataValues.certificateOrgYears,
                    values: DataValues.certificateOrgVales,
                    message: DataValues.linkedinURL.toString(),
                    url: DataValues.linkedinURL,
                    isButtonEnabled: true,
                  ),
                ),
                 SizedBox(width: MediaQuery.of(context).size.width * 0.04),
                Expanded(
                  child: ContainerCard().type3(
                    image: 'student.png',
                    title: DataValues.certificateOrg1Title,
                    role: DataValues.certificateOrg1Role,
                    years: DataValues.certificateOrg1Years,
                    values: DataValues.certificateOrg1Vales,
                    message: DataValues.linkedinURL.toString(),
                    url: DataValues.linkedinURL,
                    isButtonEnabled: true,
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.04),
                Expanded(
                  child: ContainerCard().type3(
                    image: 'student.png',
                    title: DataValues.certificateOrg2Title,
                    role: DataValues.certificateOrg2Role,
                    years: DataValues.certificateOrg2Years,
                    values: DataValues.certificateOrg2Vales,
                    message: DataValues.linkedinURL.toString(),
                    url: DataValues.linkedinURL,
                    isButtonEnabled: true,
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.04),
                Expanded(
                  child: ContainerCard().type3(
                    image: 'student.png',
                    title: DataValues.certificateOrg3Title,
                    role: DataValues.certificateOrg3Role,
                    years: DataValues.certificateOrg3Years,
                    values: DataValues.certificateOrg3Vales,
                    message: DataValues.linkedinURL.toString(),
                    url: DataValues.linkedinURL,
                    isButtonEnabled: true,
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.04),
                Expanded(
                  child: ContainerCard().type3(
                    image: 'student.png',
                    title: DataValues.certificateOrg4Title,
                    role: DataValues.certificateOrg4Role,
                    years: DataValues.certificateOrg4Years,
                    values: DataValues.certificateOrg4Vales,
                    message: DataValues.linkedinURL.toString(),
                    url: DataValues.linkedinURL,
                    isButtonEnabled: true,
                  ),
                ),
              
              ],
            ),
            // const SizedBox(height: 80.0),
            // Center(
            //   child: ContainerBanner().type1(
            //       isDesktop: true,
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
