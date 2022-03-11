import 'package:boot_camp/pages/empty_page.dart';
import 'package:boot_camp/widget/animal_card.dart';
import 'package:flutter/material.dart';

import '../model/animal.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Animal> animals = [
    Animal(
      animal: 'Kucing',
      type: 'Karnivora',
      gender: false,
      photo: 'assets/images/cat.jpg'
    ),
    Animal(
        animal: 'Anjing',
        type: 'Karnivora',
        gender: true,
        photo: 'assets/images/dog.jpg'
    ),
    Animal(
        animal: 'Bebek',
        type: 'Omnivora',
        gender: false,
        photo: 'assets/images/duck.jpg'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return animals.isEmpty?
    EmptyPage()
        : Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: List.generate(animals.length, (index){
            return AnimalCard(
              animalName: animals[index].animal,
              animalGender: animals[index].gender,
              animalPhoto: animals[index].photo,
              animalType: animals[index].type,
            );
          }),
        ),
      )
    );
  }
}
