import 'package:flutter/material.dart';
import 'package:tk_mart/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:tk_mart/utils/constants/lists.dart';

class TKMartHomeCategories extends StatelessWidget {
  const TKMartHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return SizedBox(

      height: 80,
      child: ListView.builder(

          shrinkWrap: true,
          itemCount: images.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index){

            return TKMartVerticalImageText(image: images[index], title: imagesName[index], onTap: (){});

          }
      ),
    );
  }
}