import 'package:abs_ai_design_task/core/utils/data.dart';
import 'package:abs_ai_design_task/screens/home_screen/view/widgets/list_item.dart';
import 'package:flutter/material.dart';

import 'custom_search_text_field.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  var _petlist = PetList.petList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: const Color(0xFFDFE0DF),
        elevation: 0,
        centerTitle: true,
        title: const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: Text(
            'Pet Market',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
      body: Column(
        children: [
          CustomSearchTextField(
            onChanged: (value) {
              value = value.toLowerCase();
              _petlist = [];
              if (value.isNotEmpty) {
                _petlist = PetList.petList
                    .where((element) => element.petType
                        .toString()
                        .toLowerCase()
                        .startsWith(value))
                    .toList();
              } else {
                _petlist = PetList.petList;
              }
              setState(() {});
            },
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
              padding: const EdgeInsets.all(12),
              color: const Color(0xFFDFE0DF),
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: ListItem(
                      pet: _petlist[index],
                    ),
                  );
                },
                itemCount: _petlist.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
