import 'package:flutter/material.dart';
import 'eventdatamanager.dart';

class EventForm extends StatefulWidget {
  const EventForm({super.key});

  @override
  State<EventForm> createState() => _EventFormState();
}

class _EventFormState extends State<EventForm> {

  late TextEditingController controller;
  late Event newEvent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        foregroundColor: Colors.white,
        title: const Text(
          "Event Form"
        )),
      body: Container(
          margin: const EdgeInsets.all(10.0),
          child: const Column(
            
            children: [
              TextField(),
              Text("Name"),
              SizedBox(height: 10),
              Divider(),
              TextField(),
              Text("Description"),

              //Divider(),

            ],
          )
        )
      );
  }
}