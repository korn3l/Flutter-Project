import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_project/models/recipes.dart';
import 'package:recipe_project/size_config.dart';

class RecipePanel extends StatelessWidget {
  final RecipeBundle recipeBundle;
  final VoidCallback press;

  const RecipePanel(
      {super.key, required this.recipeBundle, required this.press});

  @override
  Widget build(BuildContext context) {
    double? defaultSize = SizeConfig.defaultSize;
    return GestureDetector(
      onTap: press,
      child: Container(
        decoration: BoxDecoration(
          color: recipeBundle.color,
          borderRadius: BorderRadius.circular(defaultSize! * 2.8),
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(defaultSize * 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      recipeBundle.title,
                      style: TextStyle(
                          fontSize: defaultSize * 2.2, color: Colors.white),
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: defaultSize * 0.5),
                    Text(
                      recipeBundle.description,
                      style: TextStyle(color: Colors.white54),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Spacer(),
                    buildInfoRow(defaultSize,
                        iconSrc: "assets/icons/clock.svg",
                        text: "${recipeBundle.time} minutes"),
                    SizedBox(height: defaultSize * 0.5),
                    buildInfoRow(defaultSize,
                        iconSrc: "assets/icons/pot.svg",
                        text: "${recipeBundle.level} level"),
                  ],
                ),
              ),
            ),
            SizedBox(width: defaultSize * 0.5),
            AspectRatio(
              aspectRatio: 0.87,
              child: Image.asset(recipeBundle.imageSrc,
                  fit: BoxFit.cover, alignment: Alignment.centerLeft),
            )
          ],
        ),
      ),
    );
  }

  Row buildInfoRow(double defaultSize, {required iconSrc, text}) {
    return Row(
      children: [
        SvgPicture.asset(iconSrc),
        SizedBox(
          width: defaultSize,
        ),
        Text(
          text,
          style: TextStyle(
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
