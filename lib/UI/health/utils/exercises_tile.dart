import 'package:flutter/material.dart';

class ExercisesTile extends StatelessWidget {
   ExercisesTile({Key? key,required this.color ,required this.exerciseName, required this.icon, required this.numberOfExercise}) : super(key: key);
  final icon;
  final String exerciseName;
  final int numberOfExercise;
  final color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 18.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Container(
                padding: EdgeInsets.all(16.0),
                color: color,
                child: Icon(
                  icon,
                  color: Colors.white,
                ),
              ),
            ),
            title: Text(
              exerciseName,
            ),
            subtitle: Text(
              numberOfExercise.toString()+' Exercises',
            ),

          ),
        ),
      ),
    );
  }
}
