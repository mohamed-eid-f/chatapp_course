import 'package:chatapp_course/core/shared/app_title.dart';
import 'package:chatapp_course/features/home/presentation/views/widgets/recent_status_widget.dart';
import 'package:chatapp_course/features/home/presentation/views/widgets/user_status_widget.dart';
import 'package:chatapp_course/features/home/presentation/views/widgets/viewed_status_widget.dart';
import 'package:flutter/material.dart';

class StatusView extends StatelessWidget {
  const StatusView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const UserStatusWidget(),
              const AppTitle(title: "Recent Updates"),
              ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  for (int i = 0; i < 4; i++) const RecentStatusWidget(),
                ],
              ),
              const AppTitle(title: "Viewed Updates"),
              ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  for (int i = 0; i < 2; i++) const ViewedStatusWidget(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
