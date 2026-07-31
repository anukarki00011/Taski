import 'package:flutter/material.dart';
import 'package:planner/providers/task_provider.dart';
import 'package:provider/provider.dart';
import 'custom_text_field.dart';
import '../constants/app_colors.dart';
import '../constants/app_constants.dart';

class AddTaskSheet extends StatefulWidget {
  const AddTaskSheet({super.key});

  @override
  State<AddTaskSheet> createState() => _AddTaskSheetState();
}

class _AddTaskSheetState extends State<AddTaskSheet> {
  final _titleController = TextEditingController();

  final _descriptionController = TextEditingController();

  final _details = GlobalKey<FormState>();
  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Form(
        key: _details,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            //Title
            TextFormField(
              controller: _titleController,
              decoration: InputDecoration(
                hintText: 'Add a title',
                hintStyle: TextStyle(color: AppColors.textColor02),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
              ),
              validator: (val) {
                if (val == null ||
                    val.isEmpty) // also we can use if(_emailController.text.isEmpty)
                {
                  return "Please enter the title";
                }
                // if (val.length < 7) {
                //   return 'Email must be longer than 6 characters';
                // }
              },
            ),
            //Description
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.edit, size: 22, color: Colors.grey),
                SizedBox(width: 10),
                Expanded(
                  child: TextFormField(
                    maxLines: 5,
                    // maxLength: 10,
                    controller: _descriptionController,
                    decoration: InputDecoration(
                      hintText: 'Add a description',
                      hintStyle: TextStyle(color: AppColors.textColor02),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.themeColor),
                      ),
                    ),
                    validator: (val) {
                      if (val == null || val.isEmpty) {
                        return 'Please write the description';
                      }
                    },
                  ),
                ),
              ],
            ),

            SizedBox(height: 10),
            //Create button
            ElevatedButton(
              style: TextButton.styleFrom(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () async {
                context.read<TaskProvider>().addTask(
                  title: _titleController.text,
                  description: _descriptionController.text,
                );

                final everythingisfine =
                    _details.currentState?.validate() ?? false;
                print(everythingisfine);

                if (everythingisfine) {
                  return context.read<TaskProvider>().addTask(title: '');
                }
              },
              child: Text(
                'Create',
                style: kBodyTextStyle.copyWith(color: AppColors.textColor02),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
