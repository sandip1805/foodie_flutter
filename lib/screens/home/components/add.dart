import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Recipe {
  File image;
  String name;
  String description;
  String preparationTime;
  String preparationTimeUnit;
  String cookingTime;
  String cookingTimeUnit;
  int totalServings;
}

class AddRecipe extends StatefulWidget {
  @override
  _AddRecipeState createState() => _AddRecipeState();
}

class _AddRecipeState extends State<AddRecipe> {
  final picker = ImagePicker();
  final _recipeFormKey = GlobalKey<FormState>();
  final _recipe = Recipe();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _recipe.image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Form(
          key: _recipeFormKey,
          child: ListView(
            children: [
              Container(
                width: size.width,
                height: size.height * 0.2,
                child: _recipe.image == null
                    ? Text('No image selected.')
                    : Image.file(
                        _recipe.image,
                        fit: BoxFit.cover,
                      ),
              ),
              FlatButton.icon(
                onPressed: getImage,
                icon: Icon(Icons.add_a_photo),
                label: Text(
                    _recipe.image == null ? 'Upload Image' : 'Change Image'),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter Recipe Name',
                  labelText: 'Recipe name',
                ),
                onSaved: (value) => _recipe.name = value,
                onChanged: (value) => _recipe.name = value,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter recipe name';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter Recipe Description',
                  labelText: 'Recipe description',
                  alignLabelWithHint: true,
                ),
                keyboardType: TextInputType.multiline,
                maxLines: 5,
                onSaved: (value) => _recipe.description = value,
                onChanged: (value) => _recipe.description = value,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter recipe name';
                  }
                  return null;
                },
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter Preparation Time',
                        labelText: 'Preparation Time',
                        alignLabelWithHint: true,
                      ),
                      onSaved: (value) => _recipe.preparationTime = value,
                      onChanged: (value) => _recipe.preparationTime = value,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter recipe name';
                        }
                        return null;
                      },
                    ),
                  ),
                  Expanded(
                    child: DropdownButtonFormField(items: [
                      DropdownMenuItem(
                        child: Text('mins'),
                      ),
                      DropdownMenuItem(
                        child: Text('hours'),
                      ),
                    ], onChanged: null),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
