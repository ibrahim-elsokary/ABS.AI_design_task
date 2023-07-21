import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({
    Key? key,
    this.onChanged,
  }) : super(key: key);
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: const Color(0xFFDFE0DF),
          borderRadius: BorderRadius.circular(30)),
      child: TextField(
          onChanged: onChanged,
          cursorColor: Colors.black,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              alignLabelWithHint: true,
              hintText: "Search By Pet Type",
              border: InputBorder.none,
              prefixIcon: Image.asset('assets/icons/magnifier 1.png'))),
    );
  }
}
