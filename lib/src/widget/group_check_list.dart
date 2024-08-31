import 'package:flutter/material.dart';
import 'package:packeee/src/widget/dynamic_gradient_container.dart';

class GroupCheckList<T> extends StatefulWidget {
  final List<T> items;
  final List<T> selectedItems;
  final String Function(T) itemLabel;
  final void Function(List<T>) onSelectionChanged;

  const GroupCheckList({
    super.key,
    required this.items,
    required this.selectedItems,
    required this.itemLabel,
    required this.onSelectionChanged,
  });

  @override
  _GroupCheckListState<T> createState() => _GroupCheckListState<T>();
}

class _GroupCheckListState<T> extends State<GroupCheckList<T>> {
  late List<T> _selectedItems;

  @override
  void initState() {
    super.initState();
    _selectedItems = List.from(widget.selectedItems);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: widget.items.map((item) {
        return DynamicGradientContainer(
          margin: const EdgeInsets.symmetric(vertical: 8),
          borderRadius: 8,
          child: CheckboxListTile(
            title: Text(
              widget.itemLabel(item),
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
            controlAffinity: ListTileControlAffinity.leading,
            value: _selectedItems.contains(item),
            // fillColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
            //   if (states.contains(MaterialState.selected)) {
            //     return ZeinaColors.checkBoxColor;
            //   }
            //   return Colors.transparent;
            // }),
            onChanged: (bool? selected) {
              setState(() {
                if (selected == true) {
                  _selectedItems.add(item);
                } else {
                  _selectedItems.remove(item);
                }
              });
              widget.onSelectionChanged(_selectedItems);
            },
          ),
        );
      }).toList(),
    );
  }
}
