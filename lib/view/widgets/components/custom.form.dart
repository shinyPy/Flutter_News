import 'package:flutter/material.dart';

class CustomForm extends StatefulWidget {
  final Function onSubmit; // Callback to handle form submission
  final List<Widget> children; // List of form fields

  const CustomForm({Key? key, required this.onSubmit, required this.children})
      : super(key: key);

  @override
  State<CustomForm> createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          // Add your form fields here using widget.children
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                widget.onSubmit();
              }
            },
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }
}
