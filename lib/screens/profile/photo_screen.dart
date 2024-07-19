import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:project/data/image-source.dart';
import 'package:project/theme/app_size.dart';

class PhotoScreen extends StatelessWidget {
  const PhotoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Flex(
          direction: Axis.vertical,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildPhotoScroll(context),
            _buildPhotoGallery(context),
          ],
        ),
      ),
    );
  }

  Widget _buildPhotoScroll(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.all(
        AppSize.paddingMd,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Your photos and videos",
            style: textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: AppSize.spaceLg,
          ),
          SizedBox(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const <Widget>[
                _OverlayPhoto(
                  text: 'Tagged photos',
                ),
                _OverlayPhoto(
                  text: 'Photos',
                ),
                _OverlayPhoto(
                  text: 'Albums',
                ),
                _OverlayPhoto(
                  text: 'Videos',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPhotoGallery(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(
        AppSize.paddingMd,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Your photos',
            style: textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: AppSize.spaceLg,
          ),
          StaggeredGrid.count(
            crossAxisCount: 4,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            children: [
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2,
                child: Image.network(
                  ImageSource.photo_2,
                  fit: BoxFit.cover,
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 1,
                child: Image.network(
                  ImageSource.photo_2,
                  fit: BoxFit.cover,
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Image.network(
                  ImageSource.photo_2,
                  fit: BoxFit.cover,
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Image.network(
                  ImageSource.photo_2,
                  fit: BoxFit.cover,
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 4,
                mainAxisCellCount: 2,
                child: Image.network(
                  ImageSource.photo_2,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _OverlayPhoto extends StatelessWidget {
  final String text;
  const _OverlayPhoto({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      margin: const EdgeInsets.only(
        right: AppSize.paddingMd,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(
          AppSize.roundedMd,
        ),
        child: Stack(
          children: [
            Image.network(
              ImageSource.photo_1,
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: AppSize.spaceMd,
              left: AppSize.spaceMd,
              right: AppSize.spaceMd,
              child: Text(
                text,
                style: textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
