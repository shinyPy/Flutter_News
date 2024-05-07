import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';

class DashboardScreen extends StatelessWidget {
  final String news;
  final String caption;
  final DateTime date;
  final Function onUpdate;
  final Function onDelete;

  const DashboardScreen(this.news, this.caption, this.date,
      {super.key, required this.onUpdate, required this.onDelete});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Dashboard'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [],
              ),
              const SizedBox(height: 20.0),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Buat Berita Baru',
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10.0),
                      Form(
                        key: GlobalKey<FormState>(),
                        child: Column(
                          children: [
                            TextFormField(
                              validator: ValidationBuilder().required().build(),
                              decoration: const InputDecoration(
                                labelText: 'News name',
                              ),
                            ),
                            TextFormField(
                              validator: ValidationBuilder().required().build(),
                              decoration: const InputDecoration(
                                labelText: 'Caption',
                              ),
                            ),
                            TextFormField(
                              validator: ValidationBuilder().required().build(),
                              decoration: const InputDecoration(
                                labelText: 'Date',
                              ),
                            ),
                            const SizedBox(height: 15.0),
                            ElevatedButton(
                              onPressed: () {
                                if (Form.of(context)!.validate()) {}
                              },
                              child: const Text('Buat News'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
