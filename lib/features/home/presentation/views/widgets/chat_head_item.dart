import 'package:chatapp_course/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class ChatHeadItem extends StatelessWidget {
  const ChatHeadItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 32,
            backgroundColor: Colors.grey,
            child: Icon(
              Icons.person,
              size: 32,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Username",
                style: Theme.of(context).textTheme.displayMedium,
              ),
              Text(
                "Message",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "12:00 PM",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 8),
              CircleAvatar(
                radius: 12,
                backgroundColor: AppColors.primaryColor,
                child: Text(
                  "2",
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
