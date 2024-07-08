import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:project/components/buttons/tag_button.dart';
import 'package:project/components/marketplace/overview_card.dart';
import 'package:project/layouts/app_bar.dart';
import 'package:project/screens/avatar.dart';
import 'package:project/screens/marketplace/create_listing_screen.dart';

class TagBtn {
  final String title;

  TagBtn({required this.title});
}

// ignore: must_be_immutable
class ListingScreen extends StatelessWidget {
  ListingScreen({super.key});

  List<TagBtn> myItems = [
    TagBtn(title: 'Inbox'),
    TagBtn(title: 'Your listings'),
    TagBtn(title: 'Announcements'),
    TagBtn(title: 'Insights'),
    TagBtn(title: 'Notifications'),
  ];

  @override
  Widget build(BuildContext context) {
    const String profileImg =
        'https://www.siliconera.com/wp-content/uploads/2023/09/image-via-gege-akutami-shueisha-and-toho-animation-2.jpeg';

    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
        backgroundColor: colorScheme.onBackground,
        appBar: const MyAppBar(
          title: 'Selling',
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 12),
                height: 40,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemCount: myItems.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: TagButton(
                      onButtonPressed: () {},
                      title: myItems[index].title,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Avatar(
                    img: profileImg,
                    size: 50,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                      child: SizedBox(
                    height: 45,
                    child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: colorScheme.primary,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const CreateListingScreen()));
                        },
                        icon: const Icon(
                          LucideIcons.edit,
                          color: Colors.white,
                          size: 24,
                        ),
                        label: const Text(
                          'Create Listing',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        )),
                  ))
                ],
              ),
              const SizedBox(height: 18),
              const Text(
                'Overview',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              GridView(
                padding: const EdgeInsets.only(bottom: 18, top: 8),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  OverviewCard(
                      data: '0',
                      icon: LucideIcons.messageSquare,
                      description: 'Chats to answer'),
                  OverviewCard(
                      data: '0',
                      icon: LucideIcons.tag,
                      description: 'Active listings'),
                  OverviewCard(
                      data: '0',
                      icon: LucideIcons.arrowUpCircle,
                      description: 'Listings to renew'),
                  OverviewCard(
                      data: '0',
                      icon: LucideIcons.arrowLeftRight,
                      description: 'Listings to delete & relist')
                ],
              ),
              const Text(
                'Performance',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              GridView(
                padding: const EdgeInsets.only(bottom: 18, top: 8),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  OverviewCard(
                      data: "\$0.00", description: 'No payout history'),
                  OverviewCard(
                    data: '0',
                    icon: LucideIcons.messageSquare,
                    description: 'Clicks on listing',
                    subtext: 'Last 7 days',
                  ),
                  OverviewCard(
                    data: '0',
                    icon: LucideIcons.messageSquare,
                    description: 'Seller rating',
                    subtext: '0 ratings',
                  ),
                  OverviewCard(
                    data: '0',
                    icon: LucideIcons.messageSquare,
                    description: 'New followers',
                    subtext: 'Last 7 days',
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
