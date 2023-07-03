import 'package:flutter/material.dart';
import 'package:flutter_ui/UI/medical_ui/util/category_card.dart';
import 'package:flutter_ui/UI/medical_ui/util/doctor_card.dart';
import 'package:lottie/lottie.dart';

class MedicalUI extends StatefulWidget {
  const MedicalUI({Key? key}) : super(key: key);

  @override
  State<MedicalUI> createState() => _MedicalUIState();
}

class _MedicalUIState extends State<MedicalUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            //App Bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello,',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        'Sarah Mahmmoud',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      Icons.person,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            //Card
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    //Animation or Picture
                    Container(
                      height: 110.0,
                      width: 110.0,
                      child: Lottie.network(
                        'https://assets2.lottiefiles.com/packages/lf20_tutvdkg0.json',

                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    //How do you feel + get started button
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'How do you feel?',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          ),
                          SizedBox(
                            height: 12.0,
                          ),
                          Text(
                            'Fill out your medical card right now',
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                          SizedBox(
                            height: 12.0,
                          ),
                          Container(
                            padding: EdgeInsets.all(12.0),
                            decoration: BoxDecoration(
                              color: Colors.deepPurple[300],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                              child: Text(
                                'Get Started',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            //Search Bar
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[100],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search,),
                      border: InputBorder.none,
                      hintText: 'How can we help you?',

                    ),
                  ),
                ),
              ),
            SizedBox(
              height: 25.0,
            ),
            //Horizontal ListView -> Categories
            Container(
              height: 80.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryCard(
                    iconImagePath: 'lib/UI/medical_ui/icons/tooth.png',
                    categoryName: 'Dentist',
                  ),
                  CategoryCard(
                    iconImagePath: 'lib/UI/medical_ui/icons/surgeon.png',
                    categoryName: 'Surgeon',
                  ),
                  CategoryCard(
                    iconImagePath: 'lib/UI/medical_ui/icons/doctor.png',
                    categoryName: 'Doctor',
                  ),
                  CategoryCard(
                    iconImagePath: 'lib/UI/medical_ui/icons/capsules.png',
                    categoryName: 'Capsules',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            //Doctor List
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Doctor list',
                    style: TextStyle(
                     fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  DoctorCard(
                    doctorImagePath: 'lib/UI/medical_ui/images/doctor2.jpg',
                    rating: '4.9',
                    doctorName: 'Sarah Mahmmoud',
                    doctorProfession: 'Dentist',
                  ),
                  DoctorCard(
                    doctorImagePath: 'lib/UI/medical_ui/images/doctor1.jpg',
                    rating: '4.9',
                    doctorName: 'Sarsor Mahmmoud',
                    doctorProfession: 'Surgeon',
                  ),
                  DoctorCard(
                    doctorImagePath: 'lib/UI/medical_ui/images/doctor3.jpg',
                    rating: '4.9',
                    doctorName: 'Sarah Mahmmoud',
                    doctorProfession: 'Dentist',
                  ),
                  DoctorCard(
                    doctorImagePath: 'lib/UI/medical_ui/images/doctor4.jpg',
                    rating: '4.9',
                    doctorName: 'Sero Mahmmoud',
                    doctorProfession: 'Doctor',
                  ),
                  DoctorCard(
                    doctorImagePath: 'lib/UI/medical_ui/images/doctor5.jpg',
                    rating: '4.9',
                    doctorName: 'Sarah Mahmmoud',
                    doctorProfession: 'Dentist',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 18.0,
            ),
          ],
        ),
      ),
    );
  }
}
