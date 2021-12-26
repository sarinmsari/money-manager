import 'package:hive_flutter/adapters.dart';
import 'package:order_taking_app/models/category/category_model.dart';

const CATEGORY_DB = 'category-database';

abstract class CategoryDbFunctions {
  Future<List<CategoryModel>> getCategories();
  Future<void> insertCategory(CategoryModel value);
}

class CategoryDb extends CategoryDbFunctions {
  @override
  Future<void> insertCategory(CategoryModel value) async {
    final _category_db = await Hive.openBox<CategoryModel>(CATEGORY_DB);
    await _category_db.add(value);
  }

  @override
  Future<List<CategoryModel>> getCategories() async {
    final _category_db = await Hive.openBox<CategoryModel>(CATEGORY_DB);
    return _category_db.values.toList();
  }
}
