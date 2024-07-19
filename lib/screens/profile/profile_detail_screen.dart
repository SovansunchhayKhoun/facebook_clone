import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:project/components/circle_container.dart';
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
            _buildMusicSection(context),
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
          icon: Padding(
            padding: const EdgeInsets.all(12),
            child: Icon(
              LucideIcons.shoppingBag,
              color: colorScheme.onBackground,
            ),
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
      onTap: () {},
      leading: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            AppSize.circle,
          ),
          color: colorScheme.surface,
        ),
        child: icon,
      ),
      title: Text(
        text,
        style: textTheme.bodyMedium!.copyWith(
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
          icon: Padding(
            padding: const EdgeInsets.all(12),
            child: Icon(
              LucideIcons.graduationCap,
              color: colorScheme.onBackground,
            ),
          ),
          text: 'Add college',
          isLink: true,
        ),
        _buildSectionTile(
          context,
          icon: Padding(
            padding: const EdgeInsets.all(12),
            child: Icon(
              LucideIcons.building,
              color: colorScheme.onBackground,
            ),
          ),
          text: 'Add high school',
          isLink: true,
        ),
        _buildDetailTile(
          context,
          leadingIcon: CircleContainer(
            widget: Image.network(
              'https://scontent-ssn1-1.xx.fbcdn.net/v/t39.30808-1/447674123_782261434095768_4687185869788760855_n.jpg?stp=c120.120.480.480a_dst-jpg_p720x720&_nc_cat=111&ccb=1-7&_nc_sid=f4b9fd&_nc_ohc=-A3ZLo63EvAQ7kNvgFlbXDM&_nc_ht=scontent-ssn1-1.xx&cb_e2o_trans=q&oh=00_AYCMGzbgXmwwgp9gSklk4sCRuta8B6qq_-Tr8IHMYyLVKg&oe=669FAFF5',
              fit: BoxFit.cover,
              width: 48,
              height: 48,
            ),
          ),
          subtext: '2022 - Present',
          title: 'Studies at Cambodia Academy of Digital Technology - CADT',
          leadingSubIcon: Icon(
            LucideIcons.users,
            size: 15,
            color: colorScheme.surface,
          ),
          leadingSubText: 'Your friends',
          editIcon: true,
        ),
      ],
    );
  }

  Widget _buildPlacesSection(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _Heading(text: 'Places Lived'),
        _buildSectionTile(
          context,
          icon: Padding(
            padding: const EdgeInsets.all(12),
            child: Icon(
              LucideIcons.home,
              color: colorScheme.onBackground,
            ),
          ),
          text: 'Add City',
          isLink: true,
        ),
        _buildDetailTile(
          context,
          subtext: 'Current city',
          leadingIcon: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: colorScheme.surface,
              borderRadius: BorderRadius.circular(
                AppSize.circle,
              ),
            ),
            child: Icon(
              LucideIcons.mapPin,
              color: colorScheme.onBackground,
              size: 26,
            ),
          ),
          title: 'Phnom penh',
          leadingSubIcon: Icon(
            LucideIcons.globe,
            color: colorScheme.surface,
            size: 15,
          ),
          leadingSubText: 'Public',
          editIcon: true,
        ),
        _buildDetailTile(
          context,
          subtext: 'Hometown',
          leadingIcon: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: colorScheme.surface,
              borderRadius: BorderRadius.circular(
                AppSize.circle,
              ),
            ),
            child: Icon(
              LucideIcons.mapPin,
              color: colorScheme.onBackground,
              size: 26,
            ),
          ),
          title: 'Phnom penh',
          leadingSubIcon: Icon(
            LucideIcons.globe,
            color: colorScheme.surface,
            size: 15,
          ),
          leadingSubText: 'Public',
          editIcon: true,
        ),
      ],
    );
  }

  ListTile _buildDetailTile(
    BuildContext context, {
    required Widget leadingIcon,
    String? subtext,
    required String title,
    Widget? leadingSubIcon,
    String? leadingSubText,
    bool? editIcon,
  }) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    TextTheme textTheme = Theme.of(context).textTheme;

    return ListTile(
      onTap: () {},
      titleAlignment: ListTileTitleAlignment.titleHeight,
      leading: Container(
        decoration: BoxDecoration(
          color: colorScheme.surface,
          borderRadius: BorderRadius.circular(
            AppSize.circle,
          ),
        ),
        child: leadingIcon,
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            subtext ?? '',
            style: textTheme.bodySmall!.copyWith(
              color: colorScheme.surface,
            ),
          ),
          Row(
            children: [
              leadingSubIcon ?? Container(),
              const SizedBox(
                width: AppSize.spaceMd,
              ),
              Text(
                leadingSubText ?? '',
                style: textTheme.bodySmall!.copyWith(
                  color: colorScheme.surface,
                ),
              ),
            ],
          ),
        ],
      ),
      trailing: editIcon != null
          ? Icon(
              Icons.edit,
              color: colorScheme.surface,
            )
          : Container(
              width: 0,
            ),
    );
  }

  Widget _buildContactSection(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    TextTheme textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _Heading(
          text: 'Contact info',
          leading: Text(
            'Edit',
            style: textTheme.bodyMedium!.copyWith(
              color: Colors.blue,
            ),
          ),
        ),
        _buildDetailTile(
          context,
          leadingIcon: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: colorScheme.surface,
              borderRadius: BorderRadius.circular(AppSize.circle),
            ),
            child: const Icon(
              Icons.phone,
            ),
          ),
          subtext: 'Mobile',
          title: '012 345 678',
          leadingSubIcon: Icon(
            Icons.lock,
            size: 15,
            color: colorScheme.surface,
          ),
          leadingSubText: 'Only Me',
        ),
        _buildDetailTile(
          context,
          leadingIcon: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                AppSize.circle,
              ),
              color: colorScheme.surface,
            ),
            child: const Icon(Icons.email),
          ),
          subtext: 'Email',
          title: 'johndoe@email.com',
          leadingSubIcon: Icon(
            Icons.lock,
            size: 15,
            color: colorScheme.surface,
          ),
          leadingSubText: 'Only me',
        )
      ],
    );
  }

  Widget _buildBasicInfoSection(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _Heading(
          text: 'Basic info',
          leading: Text(
            'Edit',
            style: textTheme.bodyMedium!.copyWith(
              color: Colors.blue,
            ),
          ),
        ),
        _buildDetailTile(
          context,
          leadingIcon: Container(
            padding: const EdgeInsets.all(12),
            child: const Icon(
              Icons.person,
              size: 26,
            ),
          ),
          subtext: 'Gender',
          title: 'Male',
        ),
        _buildDetailTile(
          context,
          leadingIcon: Container(
            padding: const EdgeInsets.all(12),
            child: const Icon(
              LucideIcons.cake,
            ),
          ),
          subtext: 'Birthday',
          title: 'February 18, 2004',
          leadingSubIcon: Icon(
            Icons.lock,
            size: 15,
            color: colorScheme.surface,
          ),
          leadingSubText: 'Only me',
        ),
      ],
    );
  }

  Widget _buildOtherNamesSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _Heading(
          text: 'Other names',
        ),
        _buildSectionTile(
          context,
          icon: const Padding(
            padding: EdgeInsets.all(12),
            child: Icon(
              LucideIcons.caseSensitive,
              size: 26,
            ),
          ),
          text: 'Add Other Name',
          isLink: true,
        ),
      ],
    );
  }

  Widget _buildRelationshipSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _Heading(
          text: 'Relationship',
        ),
        _buildSectionTile(
          context,
          icon: const Padding(
            padding: EdgeInsets.all(12),
            child: Icon(
              LucideIcons.heart,
            ),
          ),
          text: 'Add Relationship',
          isLink: true,
        )
      ],
    );
  }

  Widget _buildMusicSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _Heading(text: 'Music'),
        _buildSectionTile(
          context,
          icon: const Padding(
            padding: EdgeInsets.all(12),
            child: Icon(LucideIcons.music),
          ),
          text: 'Add Music',
          isLink: true,
        )
      ],
    );
  }
}

class _Heading extends StatelessWidget {
  final String text;
  final Widget? leading;
  const _Heading({
    super.key,
    required this.text,
    this.leading,
  });

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(AppSize.paddingMd),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: textTheme.headlineSmall!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          leading != null ? leading ?? Container() : Container(),
        ],
      ),
    );
  }
}
