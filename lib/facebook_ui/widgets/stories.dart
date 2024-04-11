import 'package:elfinbook/facebook_ui/widgets/avatar.dart';
import 'package:elfinbook/models/story.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

final _stories = [
  Story(
      bg: 'assets/wallpapers/1.jpeg',
      avatar: 'assets/users/1.jpg',
      username: 'Laura'
  ),
  Story(
      bg: 'assets/wallpapers/2.jpeg',
      avatar: 'assets/users/2.jpg',
      username: 'Eze'
  ),
  Story(
      bg: 'assets/wallpapers/3.jpeg',
      avatar: 'assets/users/3.jpg',
      username: 'Maria'
  ),
  Story(
      bg: 'assets/wallpapers/4.jpeg',
      avatar: 'assets/users/4.jpg',
      username: 'Luis'
  ),
  Story(
      bg: 'assets/wallpapers/5.jpeg',
      avatar: 'assets/users/5.jpg',
      username: 'Juan'
  ),
];

class Stories extends StatelessWidget {
  const Stories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 160,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (_,index){
            final story = _stories[index];
            return _StoryItem(
                story: story,
                isFirst: index == 0
            );
          },
          itemCount: _stories.length,
        ),
    );
  }
}

class _StoryItem extends StatelessWidget {
  final Story story;
  final bool isFirst;

  const _StoryItem({super.key, required this.story, required this.isFirst});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 10,
        left: isFirst ? 10 : 0,
      ),
      height: 160,
      width: 90,
      child: Column(
        children: [
          Expanded(
            child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Positioned(
                    top: 0,
                    left:0,
                    right: 0,
                    bottom: 20,
                    child: Container(
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage(story.bg),
                            fit: BoxFit.cover,
                          )
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      child: Avatar(size: 40, asset: story.avatar, borderWidth: 3)
                  ),
                ]
            ),
          ),
          Text(
            story.username,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }

}

