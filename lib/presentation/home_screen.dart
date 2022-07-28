import 'package:emcom_assesment/presentation/container_widget.dart';
import 'package:emcom_assesment/presentation/outlined_container.dart';
import 'package:emcom_assesment/presentation/reusable_card_cont.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ListTile(
                    title: Text(
                      'New York',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('254,Broadway,New York, NY 10007, USA'),
                    trailing: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 230, 234, 234),
                      radius: 40,
                    ),
                  ),
                  ContainerWidget(
                    child: const TextField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        hintText: 'Search Facilities',
                        border: InputBorder.none,
                      ),
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ContainerWidget(
                        child: Row(
                          children: [
                            const Text('Facilities'),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.arrow_drop_down))
                          ],
                        ),
                      ),
                      ContainerWidget(
                        child: Row(
                          children: [
                            const Text('Date'),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.arrow_drop_down))
                          ],
                        ),
                      ),
                      ContainerWidget(
                        child: Row(
                          children: [
                            const Text('Shift Type'),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.arrow_drop_down))
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Kickstart your Journey',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  const Text(
                    'please complete the credintialling process to start applying for the shifts',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  OutlinedContainer(
                    child: const ListTile(
                      title: Text(
                        'Submit Your Credentials',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.blue),
                      ),
                      subtitle:
                          Text('Upload your documentation to get started'),
                      trailing: Text(
                        'Start',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  OutlinedContainer(
                    child: const ListTile(
                      title: Text(
                        'Documet Verification',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.blue),
                      ),
                      subtitle:
                          Text('Cerigigs team will verify your credentials'),
                      trailing: Icon(
                        Icons.lock,
                        color: Colors.grey,
                        size: 30,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  OutlinedContainer(
                    child: const ListTile(
                      title: Text(
                        'Interview',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.blue),
                      ),
                      subtitle: Text(
                          'A brief interview to understand your requirement'),
                      trailing: Icon(
                        Icons.lock,
                        color: Colors.grey,
                        size: 30,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ReusableCardCont(
                    color: Color.fromARGB(249, 32, 119, 58),
                    text: 'Check out and complete shift',
                    icon: const Icon(
                      Icons.lock_clock_outlined,
                      size: 40,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                   const Padding(
                   padding:  EdgeInsets.all(8.0),
                   child:  Text(
                      'Requires Your Attention',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                 ),
                  ReusableCardCont(
                    color: Colors.blue.shade500,
                    text: 'Waiting Facility Acceptance',
                    icon: const Icon(
                      Icons.hourglass_bottom_outlined,
                      size: 40,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                const Padding(
                   padding:  EdgeInsets.all(8.0),
                   child:  Text(
                      'My Calender',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                 ),
                  TableCalendar(
                      focusedDay: DateTime.now(),
                      firstDay: DateTime.utc(1990),
                      lastDay: DateTime.utc(2040),
                      daysOfWeekVisible: false),
                ]),
          ),
        ),
      ),
    );
  }
}





