import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prayer_app/common/constants.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: Get.size.height * 0.5,
              child: SfHijriDateRangePicker(
                view: HijriDatePickerView.month,
                todayHighlightColor: kprimaryCollor,
                selectionColor: kprimaryCollor,
                selectionMode: DateRangePickerSelectionMode.single,
                onSelectionChanged:
                    (DateRangePickerSelectionChangedArgs args) {},
                onViewChanged: (HijriDatePickerViewChangedArgs args) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
