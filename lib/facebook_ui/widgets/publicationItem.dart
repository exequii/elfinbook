

import 'package:cached_network_image/cached_network_image.dart';
import 'package:elfinbook/facebook_ui/widgets/avatar.dart';
import 'package:elfinbook/models/publication.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:flutter_svg/svg.dart';

class PublicationItem extends StatelessWidget {
  final Publication publication;
  const PublicationItem({super.key, required this.publication});

  final reactions = Reaction.values;
  final padding = const EdgeInsets.symmetric(
      horizontal: 20,
      vertical: 10
  );

  String _getEmojiPath(Reaction reaction){
    switch(reaction) {
      case Reaction.like:
        return 'assets/emojis/like.svg';
      case Reaction.angry:
        return 'assets/emojis/angry.svg';
      case Reaction.laughing:
        return 'assets/emojis/laughing.svg';
      case Reaction.love:
        return 'assets/emojis/heart.svg';
      case Reaction.shocking:
        return 'assets/emojis/shocked.svg';
      case Reaction.sad:
        return 'assets/emojis/sad.svg';
    }
  }

  String _formatNumber(int value){
    if(value <= 1000) return value.toString();
    else{
      return (value / 1000).toStringAsFixed(1) + "k";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 4,
            color: Color(0xffEBEBEB)
          )
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10
            ),
            child: Row(
              children: [
                Avatar(size: 35, asset: publication.user.avatar),
                const SizedBox(width: 10),
                Text(publication.user.username),
                const Spacer(),
                Text(
                  timeago.format(publication.createdAt),
                ),
              ],
            ),
          ),
          AspectRatio(
              aspectRatio: 16 / 9,
              child: CachedNetworkImage(
                  imageUrl: publication.imageUrl,
                  width: double.infinity,
                  fit:BoxFit.cover
              ),
          ),
          Padding(
            padding: padding.copyWith(top:15),
            child: Text(
              publication.title
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ...List.generate(
                        reactions.length,
                            (index) => Padding(
                          padding: const EdgeInsets.only(right: 7),
                          child: Column(
                            children: [
                              SvgPicture.asset(
                                _getEmojiPath(reactions[index]),
                                width: 25,
                                height: 25,
                              ),
                              const SizedBox(height: 2),
                              Icon(
                                Icons.circle,
                                color: reactions[index] == publication.currentUserReaction ? Colors.redAccent : Colors.transparent,
                                size: 5,
                              ),
                              const SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                    ],
                  ),
                  Flexible(
                    child: FittedBox(
                      child: Row(
                        children: [
                          Text("${_formatNumber(publication.commentsCount)} Commets"),
                          const SizedBox(width: 15),
                          Text("${_formatNumber(publication.sharesCount)} Shares")
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
