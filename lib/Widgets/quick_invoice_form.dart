import 'package:dashboard/Widgets/custom_button.dart';
import 'package:dashboard/Widgets/title_text_field.dart';
import 'package:flutter/material.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
                child: TitleTextField(
                    title: "Customer name", hint: "Type customer name")),
            SizedBox(
              width: 12,
            ),
            Expanded(
                child: TitleTextField(
                    title: "Customer Email", hint: "Type customer email")),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
                child: TitleTextField(
                    title: "Customer name", hint: "Type customer name")),
            SizedBox(
              width: 12,
            ),
            Expanded(
                child: TitleTextField(
                    title: "Customer Email", hint: "Type customer email")),
          ],
        ),
        Row(
          children: [
            Expanded(
                child: CustomButton(
              title: "Add More Details",
              buttonColor: Colors.transparent,
              textcolor: Color(0xff4EB7F2),
            )),
            SizedBox(
              width: 24,
            ),
            Expanded(
                child: CustomButton(
              title: "Send Money",
            )),
          ],
        )
      ],
    );
  }
}
