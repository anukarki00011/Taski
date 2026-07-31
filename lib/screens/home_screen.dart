import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planner/models/task_model.dart';
import '../constants/app_colors.dart';
import '../constants/app_constants.dart';
import '../widgets/to_do_element_widget.dart';
import '../providers/task_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _details = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final allTasks = context.watch<TaskProvider>().allTasks;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<TaskProvider>().addTask(title: 'hehe');
        },
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: 'Welcome, ', style: kHeadingTextStyle1),
                    TextSpan(
                      text: 'John',
                      style: kHeadingTextStyle1.copyWith(
                        color: AppColors.themeColor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Text(
                'You’ve got 7 tasks to do.',
                style: GoogleFonts.urbanist(
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                  color: AppColors.themeColor,
                ),
              ),
              SizedBox(height: 32),

              Expanded(
                child: ListView.separated(
                  itemCount: allTasks.length,
                  separatorBuilder: (_, i) => SizedBox(height: 12),
                  itemBuilder: (context, i) {
                    return TodoElementWidget(task: allTasks[i]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
