import 'package:flutter/material.dart';
import 'package:neelam_rajpoot/utils.dart';

import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/app_theme.dart';
import '../widgets/container_card.dart';
import '../widgets/frame_title.dart';

class DS5Volunteering extends StatelessWidget {
  const DS5Volunteering({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: KeyHolders.volunteeringKey,
      color: AppThemeData.backgroundGrey,
      width: double.infinity,
      // height: 300,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Flexible(
              child: FrameTitle(
                  title: DataValues.volunteeringTitle,
                  description: DataValues.volunteeringDescription),
            ),
            Row(
              children: [
                Expanded(
                  child: ContainerCard().type5(
                    context: context,
                    onTap: () {
                      Utils.urlLauncher(url: DataValues.supportAppUrl);
                    },
                    image: 'support.png',
                    title: "Bal Raksha Bharat (Child Pneumonia App) ",
                    description:
                        'Developed a child pneumonia case management app for the Jammu & Kashmir government, using Bloc for state management and persistent data.\n',
                    role: DataValues.volunteeringOrg1Role,
                    years: DataValues.volunteeringOrg1Years,
                    values: "  ",
                    message: DataValues.linkedinURL.toString(),
                    url: DataValues.linkedinURL,
                    imageUrl: DataValues.supportImageLogo,
                    isButtonEnabled: true,
                    isShowRole: true,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),

                // const SizedBox(width: 20.0),
                Expanded(
                  child: ContainerCard().type5(
                    context: context,
                    onTap: () {
                      Utils.urlLauncher(url: DataValues.colorkartAppUrl);
                    },
                    image: 'doctor.png',
                    title: 'Pragati(Girl Education App)',
                    description:
                        "Created an app for girl education in Rajasthan, with features for student tracking and educational resources.\n \n",
                    role: DataValues.volunteeringOrg2Role,
                    years: DataValues.volunteeringOrg2Years,
                    values: "",
                    message: DataValues.linkedinURL.toString(),
                    url: DataValues.linkedinURL,
                    imageUrl: DataValues.qwiseLogoImage,
                    isButtonEnabled: true,
                    isShowRole: true,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                       Expanded(
                  child: ContainerCard().type5(
                      context: context,
                      image: "mee.jpeg",
                      title: 'Meelance (Artist Networking App)',
                      description:
                          'Developed an artist networking app with APIs for seamless interactions and profile management.\n \n \n',
                      onTap: () {
                        Utils.urlLauncher(url: DataValues.soulAndSoundAppUrl);
                      },

                      // title: DataValues.volunteeringOrg2Title,
                      role: DataValues.volunteeringOrg2Role,
                      years: DataValues.volunteeringOrg2Years,
                      values: "",
                      message: DataValues.linkedinURL.toString(),
                      url: DataValues.linkedinURL,
                      imageUrl: DataValues.geetaLogoImage,
                      isButtonEnabled: true,
                      isShowRole: true),
                ),
              ],
            ),

            const SizedBox(height: 40),

            // -------------------------------- 2nd Row ----------------------------- //

            Row(
              children: [
                Expanded(
                  child: ContainerCard().type5(
                    context: context,
                    onTap: () {
                      Utils.urlLauncher(url: DataValues.supportAppUrl);
                    },
                    image: 'soul.png',
                    title: "Soul And Sound (Meditation App)",
                    description:
                        'Developed an Soul And Sound is a meditation app that helps users relax, reduce stress, and improve well-being through guided meditations and soothing soundscapes.\n',
                    role: DataValues.volunteeringOrg1Role,
                    years: DataValues.volunteeringOrg1Years,
                    values: "  ",
                    message: DataValues.linkedinURL.toString(),
                    url: DataValues.linkedinURL,
                    imageUrl: DataValues.supportImageLogo,
                    isButtonEnabled: true,
                    isShowRole: true,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),

                // const SizedBox(width: 20.0),
                Expanded(
                  child: ContainerCard().type5(
                    context: context,
                    onTap: () {
                      Utils.urlLauncher(url: DataValues.colorkartAppUrl);
                    },
                    image: 'colorkart.jpg',
                    title: 'Colorskart (Food Delivery App)',
                    description:
                        ' Developed an Colourskart is an e-commerce app for quick and convenient food delivery. It offers a wide range of restaurant options, real-time order tracking, secure payments, and regular discounts, ensuring a seamless food ordering experience.',
                    role: DataValues.volunteeringOrg2Role,
                    years: DataValues.volunteeringOrg2Years,
                    values: "",
                    message: DataValues.linkedinURL.toString(),
                    url: DataValues.linkedinURL,
                    imageUrl: DataValues.qwiseLogoImage,
                    isButtonEnabled: true,
                    isShowRole: true,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: SizedBox()
                ),
                 
              ],
            ),

            const SizedBox(height: 40),
             const Flexible(
              child: FrameTitle(
                  title:'Visual Casino Game',
                  description: 'Developed an Indian Flush casino game, focusing on high-ranking three-card combinations and maximising winnings.\n\n'),
            ),
               Row(
              children: [
                Expanded(
                  child: ContainerCard().type5(
                    context: context,
                    onTap: () {
                      Utils.urlLauncher(url: DataValues.supportAppUrl);
                    },
                    image: 'luckey7.png',
                    title: "Lucky 7",
                    description:
                        '"Lucky 7" is a simple casino game where players aim to win by landing combinations with the number 7. Implement features like spinning reels, randomization, rewards, and animations for an engaging experience in your Flutter project.n',
                    role: DataValues.volunteeringOrg1Role,
                    years: DataValues.volunteeringOrg1Years,
                    values: "  ",
                    message: DataValues.linkedinURL.toString(),
                    url: DataValues.linkedinURL,
                    imageUrl: DataValues.supportImageLogo,
                    isButtonEnabled: true,
                    isShowRole: true,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),

                // const SizedBox(width: 20.0),
                Expanded(
                  child: ContainerCard().type5(
                    context: context,
                    onTap: () {
                      Utils.urlLauncher(url: DataValues.colorkartAppUrl);
                    },
                    image: 'teen-Patti-.png',
                    title: 'Teen Patti',
                    description:
                        "A Teen Patti game in Flutter, featuring traditional gameplay, a casino-style UI, multiplayer support, and efficient state management using Bloc. It includes virtual chips and in-app purchases for an engaging experience.",
                    role: DataValues.volunteeringOrg2Role,
                    years: DataValues.volunteeringOrg2Years,
                    values: "",
                    message: DataValues.linkedinURL.toString(),
                    url: DataValues.linkedinURL,
                    imageUrl: DataValues.qwiseLogoImage,
                    isButtonEnabled: true,
                    isShowRole: true,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                       Expanded(
                  child: ContainerCard().type5(
                      context: context,
                      image: "amar-akhbar.png",
                      title: 'Amar Akhar Anthony',
                      description:
                          '"Amar Akhar Anthony" is a traditional Indian casino game where players guess numbers or outcomes. In a Flutter project, it can be built using interactive UI elements and animations to engage users.',
                      onTap: () {
                        Utils.urlLauncher(url: DataValues.soulAndSoundAppUrl);
                      },

                      // title: DataValues.volunteeringOrg2Title,
                      role: DataValues.volunteeringOrg2Role,
                      years: DataValues.volunteeringOrg2Years,
                      values: "",
                      message: DataValues.linkedinURL.toString(),
                      url: DataValues.linkedinURL,
                      imageUrl: DataValues.geetaLogoImage,
                      isButtonEnabled: true,
                      isShowRole: true),
                ),
              ],
            ),
 
          const SizedBox(height: 40),
 Row(
              children: [
                Expanded(
                  child: ContainerCard().type5(
                    context: context,
                    onTap: () {
                      Utils.urlLauncher(url: DataValues.supportAppUrl);
                    },
                    image: 'bollywood.png',
                    title: "Bollywood Table",
                    description:
                       'A "Bollywood Table" game in a visual casino app in Flutter involves designing an interactive game interface with cards, chips, and buttons, managed using Bloc for state. Animations and game logic ensure a dynamic, engaging experience for users.',
                    role: DataValues.volunteeringOrg1Role,
                    years: DataValues.volunteeringOrg1Years,
                    values: "  ",
                    message: DataValues.linkedinURL.toString(),
                    url: DataValues.linkedinURL,
                    imageUrl: DataValues.supportImageLogo,
                    isButtonEnabled: true,
                    isShowRole: true,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),

                // const SizedBox(width: 20.0),
                Expanded(
                  child: ContainerCard().type5(
                    context: context,
                    onTap: () {
                      Utils.urlLauncher(url: DataValues.colorkartAppUrl);
                    },
                    image: 'daragon-tiger.png',
                    title: 'Dragon Tiger',
                    description:
                        "Dragon Tiger is a simple casino card game where players bet on which hand (Dragon or Tiger) will have the higher card. The game displays results based on card comparisons, with outcomes of Dragon, Tiger, or Tie.",
                    role: DataValues.volunteeringOrg2Role,
                    years: DataValues.volunteeringOrg2Years,
                    values: "",
                    message: DataValues.linkedinURL.toString(),
                    url: DataValues.linkedinURL,
                    imageUrl: DataValues.qwiseLogoImage,
                    isButtonEnabled: true,
                    isShowRole: true,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                       Expanded(
                  child: ContainerCard().type5(
                      context: context,
                      image: "dragon-tiger-lion.png",
                      title: 'Dragon Tiger Lion',
                      description:
                          'Dragon Tiger Lion is a casino card game where players bet on which card (Dragon, Tiger, or Lion) will be higher. The game deals two cards, and the goal is to predict the winner.\n',
                      onTap: () {
                        Utils.urlLauncher(url: DataValues.soulAndSoundAppUrl);
                      },

                      // title: DataValues.volunteeringOrg2Title,
                      role: DataValues.volunteeringOrg2Role,
                      years: DataValues.volunteeringOrg2Years,
                      values: "",
                      message: DataValues.linkedinURL.toString(),
                      url: DataValues.linkedinURL,
                      imageUrl: DataValues.geetaLogoImage,
                      isButtonEnabled: true,
                      isShowRole: true),
                ),
              ],
            ),
          const SizedBox(height: 40),
         Expanded(
                  child: ContainerCard().type5(
                      context: context,
                      image: "virtual-teen-patti.png",
                      title: 'Open Virtual Teen Patti',
                      description:
                          'To create a Virtual Teen Patti game in Flutter, design a UI with game elements like cards and player actions using widgets. Implement game logic for card ranking, betting, and state management with Bloc or Provider. Add animations to enhance the visual experience of the game.',
                      onTap: () {
                        Utils.urlLauncher(url: DataValues.soulAndSoundAppUrl);
                      },

                      // title: DataValues.volunteeringOrg2Title,
                      role: DataValues.volunteeringOrg2Role,
                      years: DataValues.volunteeringOrg2Years,
                      values: "",
                      message: DataValues.linkedinURL.toString(),
                      url: DataValues.linkedinURL,
                      imageUrl: DataValues.geetaLogoImage,
                      isButtonEnabled: true,
                      isShowRole: true),
                ),
       
          ],
        ),
      ),
    );
  }
}
