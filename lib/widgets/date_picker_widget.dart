import 'package:evenza/controllers/auth/singup_controller.dart';
import 'package:evenza/widgets/event_res.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class DatePickerWidget extends HookWidget {
  const DatePickerWidget({super.key, required this.onSaved});

  final void Function(String?) onSaved;

  @override
  Widget build(BuildContext context) {
    final date = useState<String?>(null);
    return FormFeildWidget(
      validationText: 'أدخل تاريخ المناسبة رجاءا',
      hinttext: 'تاريخ المناسبة',
      initValue: date.value,
      onSaved: onSaved,
      icon: GestureDetector(
        onTap: () async {
          final d = await showDatePicker(
            context: context,
            // firstDate: DateTime(1950),
            initialDate: DateTime.now(),
            firstDate: DateTime.now().subtract(const Duration(days: 0)),
            lastDate: DateTime(2050),
          );

          if (d != null) {
            date.value = d.toDateString();
          }
        },
        child: const Icon(Icons.date_range_outlined),
      ),
    );
  }
}
