import 'package:chatapp_course/core/shared/app_button.dart';
import 'package:chatapp_course/core/shared/app_text_field.dart';
import 'package:chatapp_course/core/theme/app_colors.dart';
import 'package:chatapp_course/core/shared/app_title.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile', style: Theme.of(context).textTheme.displayLarge),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Stack(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8aGFpcmRyZXNzZXJ8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80",
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: AppColors.primaryColor,
                      child: Icon(
                        Icons.edit,
                        color: Colors.white,
                        size: 16,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 16),
              const SizedBox(height: 32),
              const AppTitle(title: "Name"),
              const AppTextField(),
              const SizedBox(height: 32),
              const AppTitle(title: "Phone"),
              const AppTextField(
                textInputType: TextInputType.phone,
              ),
              const SizedBox(height: 32),
              AppButton(
                  icon: Icons.save, title: "Save Profile", onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
