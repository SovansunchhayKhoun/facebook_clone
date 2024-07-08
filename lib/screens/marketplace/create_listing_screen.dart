import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:project/components/app_bars/action_app_bar.dart';
import 'package:project/components/buttons/tag_button.dart';
import 'package:project/components/marketplace/custom_drop_down_button.dart';
import 'package:project/components/marketplace/custom_text_input.dart';
import 'package:project/screens/marketplace/listing_screen.dart';
import 'package:project/theme/text_theme.dart';

enum CategoryLabel {
  blue('Blue'),
  pink('Pink'),
  green('Green'),
  yellow('Orange'),
  grey('Grey');

  const CategoryLabel(this.label);
  final String label;
}

List<TagBtn> myItems = [
  TagBtn(title: 'New'),
  TagBtn(title: 'Used - Like New'),
  TagBtn(title: 'Used - Good'),
  TagBtn(title: 'Used - Bad'),
];

class CreateListingScreen extends StatefulWidget {
  const CreateListingScreen({super.key});

  @override
  State<CreateListingScreen> createState() => _CreateListingScreenState();
}

class _CreateListingScreenState extends State<CreateListingScreen> {
  final ImagePicker _picker = ImagePicker();
  XFile? _image;

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  // final TextEditingController _descriptionController = TextEditingController();
  // final TextEditingController _locationController = TextEditingController();

  final List<String> _categoryOptions = [
    'Apple',
    'Banana',
    'Cherry',
    'Date',
    'Elderberry',
  ];

  String? selectedCategory;

  @override
  void dispose() {
    // Step 4: Dispose the controller when the widget is disposed
    _titleController.dispose();
    super.dispose();
  }

  Future<void> _pickImage(ImageSource source) async {
    final XFile? pickedFile = await _picker.pickImage(source: source);

    if (pickedFile != null) {
      setState(() {
        _image = pickedFile;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.onBackground,
      appBar: const ActionAppBar(
        title: 'Listing Detail',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              height: 175,
              child: _image == null
                  ? GestureDetector(
                      onTap: () => _pickImage(ImageSource.gallery),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: colorScheme.surface,
                            borderRadius: BorderRadius.circular(12)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(LucideIcons.image),
                            Text('Add photo'),
                          ],
                        ),
                      ),
                    )
                  : Image.file(File(_image!.path)),
            ),
            const SizedBox(height: 4),
            Text('Photos: 0/10',
                style:
                    TextStyle(color: colorScheme.inversePrimary, fontSize: 14)),
            const SizedBox(height: 16),
            CustomTextInput(hintText: 'Title', controller: _titleController),
            CustomTextInput(hintText: 'Price', controller: _priceController),
            CustomDropDownButton(
                options: _categoryOptions,
                selectedCategory: selectedCategory,
                onChanged: (String? value) {
                  selectedCategory = value;
                }),
            const SizedBox(height: 16),
            Text('Condition',
                style:
                    textTheme.bodySmall!.copyWith(fontWeight: FontWeight.w500)),
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
                    borderRadius: 8,
                    color: colorScheme.inversePrimary,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
