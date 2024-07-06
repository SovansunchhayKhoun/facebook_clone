import 'package:flutter/material.dart';
import 'package:project/components/button/tag_button.dart';
import 'package:project/layouts/app_bar.dart';

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
    return Scaffold(
        appBar: const MyAppBar(
          title: 'Selling',
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(vertical: 12),
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
              const Row(
                children: [Text('data'), Text('data')],
              )
            ],
          ),
        ));
  }
}
