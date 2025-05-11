import 'package:attendance_app/colors.dart';
import 'package:attendance_app/components/input_form_controller.dart';
import 'package:attendance_app/components/progress_indicator.dart';
import 'package:attendance_app/screens/events/create_sub_event_step3.dart';
import 'package:flutter/material.dart';
import 'package:forui/forui.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class CreateSubEventPage2 extends StatefulWidget {
  @override
  _CreateSubEventPageState2 createState() => _CreateSubEventPageState2();
}

class _CreateSubEventPageState2 extends State<CreateSubEventPage2> {
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _subEventNameController = TextEditingController();

  @override
  void dispose() {
    _subEventNameController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  void _saveSubEvent() {
    // Handle save action
    final name = _subEventNameController.text;
    final description = _descriptionController.text;
    // Perform save operation
  }

  @override
  Widget build(BuildContext context) {
    return FScaffold(
      header: FHeader.nested(
        title: const Text('Create Sub Event'),
        prefixes: [
          FHeaderAction.back(onPress: () {
            Navigator.pop(context);
          }),
        ],
        suffixes: [
          FHeaderAction(
            icon: const  Icon(FIcons.search) ,
            onPress: () {},
          ),
          FHeaderAction(
            icon: const  Icon(FIcons.plus) ,
            onPress: () {},
          ),
        ],
      ),
      child: Padding(
        padding:  const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            FDateField.calendar(
  label: Text('Appointment Date'),
  description: Text('Select a date for your appointment'),
),
             const FTimeField.picker(
  label: Text('Appointment Time'),
  description: Text('Select a time for your appointment.'),
),
            // ShadTimePickerFormField(
            //   label: const Text('Pick a time'),
            //   onChanged: print,
            //   description: const Text('The time of the day you want to pick'),
            //   validator: (v) => v == null ? 'A time is required' : null,
            // ),
            const Padding(
              padding: const EdgeInsets.only(bottom: 36.0),
              child: ReusableProgressIndicator(
                progressValue: 0.33,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ShadButton.outline(
                  width: 100,
                  child: const Text('Cancel'),
                  onPressed: () {
                    
                  },
                ),
                const SizedBox(width: 30),
                ShadButton(
                  backgroundColor: UIColor.Blue,
                  width: 100,
                  child: const Text('Next'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CreateSubEventPage3()),
                    );
                  },
                )
              ],
            ),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
