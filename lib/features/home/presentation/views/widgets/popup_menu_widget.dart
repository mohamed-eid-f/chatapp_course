import 'package:chatapp_course/features/profile/presentation/views/profile_view.dart';
import 'package:flutter/material.dart';

class PopupMenuWidget extends StatelessWidget {
  const PopupMenuWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
      itemBuilder: (context) => [
        const PopupMenuItem(
          value: 1,
          child: Text("New Group"),
        ),
        const PopupMenuItem(
          value: 2,
          child: Text("Profile"),
        ),
      ],
      offset: const Offset(0, 40),
      color: Colors.white,
      elevation: 4,
      onSelected: (value) {
        if (value == 1) {
          // todo: Navigate to New Group Screen
        } else if (value == 2) {
          // Navigate to Profile Screen
          Navigator.of(context).push(MaterialPageRoute(
            builder: (_) => const ProfileView(),
          ));
        }
      },
    );
  }
}
