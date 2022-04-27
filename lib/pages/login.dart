import 'package:flutter/material.dart';
import 'package:ui_test/widgets/disease_tag.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final tags = <String>['Cancer', 'Periods'];
  final diseaseList = TextEditingController();

  void doSomething(value) {
    if (value == '') {
      null;
    } else {
      tags.add(value);
    }
    setState(() {});
    diseaseList.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 70,
            ),
            const Text(
              'Personal Details',
              style: TextStyle(
                  fontSize: 26, color: Color.fromARGB(255, 148, 114, 232)),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Name",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: "Age",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: "Gender",
                      border: OutlineInputBorder(),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Disease",
                border: OutlineInputBorder(),
              ),
              controller: diseaseList,
              onFieldSubmitted: doSomething,
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(5),
              height: 164,
              width: double.infinity,
              child: SizedBox(
                height: double.infinity,
                child: Wrap(
                  children: tags.map((d) {
                    return Tags(d);
                  }).toList(),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                  width: 1,
                  color: const Color.fromARGB(255, 148, 114, 232),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 148, 114, 232))),
                onPressed: () {},
                child: const Text('Submit'),
              ),
              width: double.infinity,
              height: 40,
            ),
          ],
        ),
      )),
    );
  }
}
