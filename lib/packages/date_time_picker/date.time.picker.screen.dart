import 'package:date_time_picker/date_time_picker.dart';
import 'package:packages_demo/libs.dart';

class DateTimePickerScreen extends StatelessWidget {
  const DateTimePickerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar(titleText: 'Date Time Picker'),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: DateTimePicker(
              type: DateTimePickerType.dateTimeSeparate,
              dateMask: 'd MMM, yyyy',
              // initialValue: DateTime.now().toString(),
              initialDate: DateTime.now(),
              firstDate: DateTime(2000),
              lastDate: DateTime(2100),
              icon: const Icon(Icons.event),
              dateLabelText: 'Date',
              timeLabelText: "Hour",
              initialTime: TimeOfDay.now(),

              // selectableDayPredicate: (date) {
              // Disable weekend days to select from the calendar
              // if (date.weekday == 7 || date.weekday == 7) {
              //   return false;
              // }
              //   return true;
              // },
            ),
          ),
        ),
      ),
    );
  }
}
