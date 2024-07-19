import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:project/theme/app_size.dart';
import 'package:project/theme/text_theme.dart';

class ProfileDetail extends StatelessWidget {
  const ProfileDetail({super.key});

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: colorScheme.onBackground,
      appBar: AppBar(
        title: const Text('About'),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildWorkSection(context),
            _buildEducationSection(context),
            _buildPlacesSection(context),
            _buildContactSection(context),
            _buildBasicInfoSection(context),
            _buildOtherNamesSection(context),
            _buildRelationshipSection(context),
            _buildFamilySection(context),
            _buildLifeEventsSection(context),
            _buildCheckinSection(context),
            _buildMusicSection(context),
            _buildLikesSection(context),
            _buildFollowingSection(context),
            _buildEventsSection(context),
            _buildGroupsSection(context),
          ],
        ),
      ),
    );
  }

  Widget _buildWorkSection(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _Heading(text: 'Work'),
        _buildSectionTile(
          context,
          text: 'Add work experience',
          isLink: true,
          icon: Icon(
            LucideIcons.shoppingBag,
            color: colorScheme.onBackground,
          ),
        )
      ],
    );
  }

  ListTile _buildSectionTile(
    BuildContext context, {
    required Widget icon,
    required String text,
    bool? isLink,
  }) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return ListTile(
      leading: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            AppSize.circle,
          ),
          color: colorScheme.surface,
        ),
        padding: const EdgeInsets.all(12),
        child: icon,
      ),
      title: Text(
        text,
        style: textTheme.bodyLarge!.copyWith(
          color: isLink != null ? Colors.blue : colorScheme.inversePrimary,
          fontWeight: isLink == null ? FontWeight.w600 : FontWeight.normal,
        ),
      ),
    );
  }

  Widget _buildEducationSection(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _Heading(text: 'Education'),
        _buildSectionTile(
          context,
          icon: Icon(
            LucideIcons.graduationCap,
            color: colorScheme.onBackground,
          ),
          text: 'Add college',
          isLink: true,
        ),
        _buildSectionTile(
          context,
          icon: Icon(
            LucideIcons.building,
            color: colorScheme.onBackground,
          ),
          text: 'Add high school',
          isLink: true,
        ),
        _buildSectionTile(
          context,
          icon: Image.network(
            'https://scontent-ssn1-1.xx.fbcdn.net/v/t39.30808-1/447674123_782261434095768_4687185869788760855_n.jpg?stp=c120.120.480.480a_dst-jpg_p720x720&_nc_cat=111&ccb=1-7&_nc_sid=f4b9fd&_nc_ohc=-A3ZLo63EvAQ7kNvgFlbXDM&_nc_ht=scontent-ssn1-1.xx&cb_e2o_trans=q&oh=00_AYCMGzbgXmwwgp9gSklk4sCRuta8B6qq_-Tr8IHMYyLVKg&oe=669FAFF5',
            fit: BoxFit.cover,
          ),
          text: 'Studies at Cambodia Academy of Digital Technology - CADT,',
        ),
      ],
    );
  }

  Widget _buildPlacesSection(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _Heading(text: 'Places Lived'),
        Text('_buildPlacesSection'),
      ],
    );
  }

  Widget _buildContactSection(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _Heading(text: 'Contact info'),
        Text('_buildContactSection'),
      ],
    );
  }

  Widget _buildBasicInfoSection(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _Heading(text: 'Basic info'),
        Text('_buildBasicInfoSection'),
      ],
    );
  }

  Widget _buildOtherNamesSection(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _Heading(
          text: 'Other names',
        ),
        Text('_buildOtherNamesSection')
      ],
    );
  }

  Widget _buildRelationshipSection(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _Heading(
          text: 'Relationship',
        ),
        Text('_buildRelationshipSection')
      ],
    );
  }

  Widget _buildFamilySection(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _Heading(text: 'Family members'),
        Text('_buildFamilySection'),
      ],
    );
  }

  Widget _buildLifeEventsSection(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _Heading(
          text: 'Life events',
        ),
        Text('_buildLifeEventsSection')
      ],
    );
  }

  Widget _buildCheckinSection(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _Heading(text: 'Check-ins'),
        Text('_buildCheckinSection'),
      ],
    );
  }

  Widget _buildMusicSection(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _Heading(text: 'Music'),
        Text('_buildMusicSection'),
      ],
    );
  }

  Widget _buildLikesSection(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _Heading(text: 'Likes'),
        Text('_buildLikesSection'),
      ],
    );
  }

  Widget _buildFollowingSection(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _Heading(text: 'Following'),
        Text('_buildFollowingSection'),
      ],
    );
  }

  Widget _buildEventsSection(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _Heading(text: 'Events'),
        Text('_buildEventsSection'),
      ],
    );
  }

  Widget _buildGroupsSection(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _Heading(text: 'Groups'),
        Text('_buildGroupsSection'),
      ],
    );
  }
}

class _Heading extends StatelessWidget {
  final String text;
  const _Heading({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(AppSize.paddingMd),
      child: Text(
        text,
        style: textTheme.headlineSmall!.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
