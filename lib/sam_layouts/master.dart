import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_tutorial/pages/recipe_page/recipe_listing.dart';
import 'package:flutter_tutorial/pages/recipe_page/recipe_detail.dart';

class MasterDetailContainer extends StatefulWidget {
  @override
  _RecipeMasterDetailContainerState createState() =>
      _RecipeMasterDetailContainerState();
}

class _RecipeMasterDetailContainerState extends State<MasterDetailContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Master"),
        ),
        body: RecipeListing(recipeSelectedCallback: (recipe) {
          Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (BuildContext context) {
                return RecipeDetails(recipe: recipe);
              },
            ),
          );
        }));
  }
}
