import 'package:abs_ai_design_task/model/pet.dart';
import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  const ListItem({Key? key, required this.pet, this.onTap}) : super(key: key);
  final Pet pet;

  final void Function()? onTap;
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)),
        height: 125,
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  "https://img.freepik.com/premium-photo/labrador-retriever-dog-panting-ginger-cat-sitting-front-dark-yellow-background_191971-28714.jpg",
                  width: 115,
                  height: 125,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("${pet.name}", style: const TextStyle(fontSize: 22)),
                      Text(
                        "${pet.type}",
                        style: const TextStyle(
                          fontSize: 15,
                          color: Color(0xffACACAC),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/icons/pawprintImg.png',
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text("Pet Love : ${pet.age}",
                              style: const TextStyle(
                                  fontSize: 15, color: Color(0xffDB6400))),
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
