import 'package:elfinbook/facebook_ui/widgets/circleButton.dart';
import 'package:elfinbook/facebook_ui/widgets/publicationItem.dart';
import 'package:elfinbook/facebook_ui/widgets/quickActions.dart';
import 'package:elfinbook/facebook_ui/widgets/stateInput.dart';
import 'package:elfinbook/facebook_ui/widgets/stories.dart';
import 'package:elfinbook/icons/custom_icons.dart';
import 'package:elfinbook/models/publication.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:faker/faker.dart';

class FacebookUi extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final faker = Faker();
    final publications = <Publication>[];

    for(int i = 0; i < 50; i++){
      final random = faker.randomGenerator;
      const reactions = Reaction.values;
      final reactionIndex = random.integer(reactions.length - 1);

      final publication = Publication(
          user: User(avatar: faker.image.image(), username: faker.person.name()),
          title: faker.lorem.sentence(),
          createdAt: faker.date.dateTime(),
          imageUrl: faker.image.image(),
          commentsCount: random.integer(50000),
          sharesCount: random.integer(50000),
          currentUserReaction: reactions[reactionIndex],
      );
      publications.add(publication);
    }

    return Scaffold(
      appBar: AppBar(
        leading: SvgPicture.asset(
          'assets/logos/facebook.svg',
          color: Colors.blue,
          width: 150,
        ),
        leadingWidth: 150,
        actions: const [
          CircleButton(color: Color(0xffBFBFBF), iconData: CustomIcons.search),
          SizedBox(width: 15),
          CircleButton(color: Color(0xffFE7574), iconData: CustomIcons.bell),
          SizedBox(width: 15),
          CircleButton(color: Color(0xff7BBAFF), iconData: CustomIcons.user_friends, showBadge: true),
          SizedBox(width: 15),
          CircleButton(color: Color(0xff1C86E4), iconData: CustomIcons.messenger),
          SizedBox(width: 15),
        ],
      ),
      body: ListView(
        children: [
          const StateInput(),
          const SizedBox(height: 25),
          const QuickActions(),
          const SizedBox(height: 25),
          const Stories(),
          const SizedBox(height: 25),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (_,index) => PublicationItem(publication: publications[index]),
            itemCount: publications.length,
          )
        ],
      )
    );
  }

}