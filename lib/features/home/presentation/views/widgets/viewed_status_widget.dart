import 'package:flutter/material.dart';

class ViewedStatusWidget extends StatelessWidget {
  const ViewedStatusWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          const Stack(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8aGFpcmRyZXNzZXJ8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80",
                ),
                radius: 40,
              ),
            ],
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Mohammed Eid",
                style: Theme.of(context).textTheme.displayMedium,
              ),
              const SizedBox(height: 12),
              Text(
                "Today, 12:00 PM",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
