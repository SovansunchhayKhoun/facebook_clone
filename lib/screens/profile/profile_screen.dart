import 'package:flutter/material.dart';
import 'package:project/components/app_bars/profile_app_bar.dart';
import 'package:project/components/screen_widgets/profile_screen_widget.dart';
import 'package:project/layouts/my_bottom_nagivation_bar.dart';
import 'package:project/models/post.dart';
import 'package:project/theme/app_size.dart';
import 'package:project/widgets/posts/build_post_item.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: colorScheme.onBackground,
      appBar: const ProfileAppBar(
        title: 'Sunchhay Khoun',
      ),
      body: SingleChildScrollView(
        child: LayoutBuilder(
          builder: (context, constraints) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileScreenWidget().getBuildUserProfile(context),
              const SizedBox(
                height: 50,
              ),
              Container(
                padding: const EdgeInsets.all(AppSize.paddingMd),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProfileScreenWidget().getBuildUserName(context),
                    const SizedBox(
                      height: AppSize.spaceLg,
                    ),
                    ProfileScreenWidget().getBuildProfileButtons(context),
                  ],
                ),
              ),
              Divider(
                height: 4,
                thickness: 5,
                color: colorScheme.surface,
              ),
              ProfileScreenWidget().getBuildSectionDivider(context),
              const SizedBox(
                height: AppSize.spaceMd,
              ),
              ProfileScreenWidget().getBuildUserButtons(context),
              Divider(
                thickness: 0.5,
                color: colorScheme.surface,
              ),
              ProfileScreenWidget().getBuildUserDetails(context),
              ProfileScreenWidget().getBuildUserFriends(context, constraints),
              const SizedBox(
                height: AppSize.spaceMd,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: AppSize.paddingMd),
                child: Divider(
                  height: 4,
                  thickness: 5,
                  color: colorScheme.surface,
                ),
              ),
              ProfileScreenWidget().getBuildSectionDivider(context),
              const SizedBox(
                height: AppSize.spaceMd,
              ),
              ProfileScreenWidget().getBuildPostActions(context),
              ProfileScreenWidget().getBuildSectionDivider(context),
              Container(
                height: 100,
                color: colorScheme.primary,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }
}
