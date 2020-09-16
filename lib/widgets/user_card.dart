import 'package:facebook_ui/models/models.dart';
import 'package:facebook_ui/widgets/profile_avatar.dart';
import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  final User currentUser;

  const UserCard({Key key, @required this.currentUser}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => print('Profile'),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ProfileAvatar(imageUrl: currentUser.imageUrl),
          const SizedBox(width: 8),
          Flexible(
            child: Text(
              '${currentUser.name}',
              style: const TextStyle(fontSize: 16),
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
