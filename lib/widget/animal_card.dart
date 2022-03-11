import 'package:boot_camp/pages/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AnimalCard extends StatefulWidget {
  final String? animalName;
  final String? animalType;
  final bool? animalGender;
  final String? animalPhoto;

  const AnimalCard(
      {Key? key,
      this.animalName,
      this.animalType,
      this.animalGender = false,
      this.animalPhoto})
      : super(key: key);

  @override
  _AnimalCardState createState() => _AnimalCardState();
}

class _AnimalCardState extends State<AnimalCard> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Get.to(const DetailPage());
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.deepPurpleAccent,
          ),
          width: double.infinity,
          height: size.height * 0.2,
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Image(
                  image: AssetImage(widget.animalPhoto!),
                  fit: BoxFit.cover,
                  height: size.height * 0.2,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.animalName!,
                      style: GoogleFonts.pacifico(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Jenis kelamin : ${widget.animalGender! ? 'Male' : 'Female'}',
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      widget.animalType!,
                      style: GoogleFonts.poppins(
                          color: Colors.yellow,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
