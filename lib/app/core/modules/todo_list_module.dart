import 'package:flutter/Material.dart';
import 'package:provider/single_child_widget.dart';
import 'package:todolist_flutter/app/core/modules/todo_list_page.dart';

abstract class TodoListModule {
  final Map<String, WidgetBuilder> _routers;
  final List<SingleChildWidget>? _bindings;

  TodoListModule({List<SingleChildWidget>? bindings, required routers})
      : _routers = routers,
        _bindings = bindings;

  Map<String, WidgetBuilder> get routers {
    return _routers.map(
      (key, value) => MapEntry(
        key,
        (context) => TodoListPage(
          page: value,
          bindings: _bindings,
        ),
      ),
    );
  }
}