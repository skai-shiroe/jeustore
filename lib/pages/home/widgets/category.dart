import 'package:flutter/material.dart';
import 'package:jeustore/pages/home/widgets/newest.dart';
import 'package:jeustore/pages/home/widgets/popular.dart';

class CategorySection extends StatelessWidget {
   CategorySection({super.key});

// creation d'une base de liste
final categories=[
{
  'icon':Icons.track_changes_outlined,
  'color':Color.fromARGB(255, 82, 160, 9),
  'title':'Arcade',
},

{
  'icon':Icons.sports_motorsports_outlined,
  'color':Color.fromARGB(255, 155, 59, 219),
  'title':'Racing',
},

{
  'icon':Icons.casino_outlined,
  'color':Color.fromARGB(255, 223, 54, 54),
  'title':'Strategy',
},

{
  'icon':Icons.sports_esports,
  'color':Color.fromARGB(255, 19, 214, 117),
  'title':'More',
},
];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: ListView(
          padding: EdgeInsets.only(bottom: 80),
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 150,
            //color: Color.fromARGB(255, 255, 255, 255),
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 5),
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context,index)=> Column(
                children: [
                  const SizedBox(height: 25,),
                  Container(
                    padding: const EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: categories[index]['color'] as Color,
                    ),
                    child: Icon(
                      categories[index]['icon'] as IconData,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Text(
                    categories[index]['title'] as String,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              )),
              separatorBuilder: ((context, index) => const SizedBox(width: 33)),
              itemCount: categories.length,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: const Text(
            'Jeu populaire',
            style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          ),

          
           PopularGame(),

           Container(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: const Text(
            'Nouveautes',
            style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          ),
          NewestGame(),
      ]
      ),
    );
  }
}