import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class Dropdown extends StatefulWidget {
  const Dropdown(
      {super.key, required this.name, required this.options, this.width});

  final String name;
  final List<int> options;
  final double? width;

  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  int? _value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width ?? 50,
      child: FormBuilderDropdown<int>(
        name: widget.name,
        decoration: InputDecoration(
          labelText: _value == null ? '선택' : null,
        ),
        onChanged: (value) {
          setState(() {
            _value = value?.toInt();
            debugPrint(_value.toString());
          });
        },
        items: widget.options
            .map((value) => DropdownMenuItem(
                  alignment: AlignmentDirectional.center,
                  value: value,
                  child: Text(value.toString()),
                ))
            .toList(),
      ),
    );
  }
}
