import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:learn_course/shared/components/components.dart';
import 'package:learn_course/shared/cubit/cubit.dart';
import 'package:learn_course/shared/cubit/states.dart';
import 'package:learn_course/shared/styles/styles.dart';

/* 
  1. id integer
  2. title String
  3. date String
  4. time String
  5. status String
 */

class HomeLayout extends StatelessWidget {
  HomeLayout({Key? key}) : super(key: key);

//* Internal Variables
  var scaffoldKey =
      GlobalKey<ScaffoldState>(); // Assign the GlobalKey to the Scaffold widget
  var formKey = GlobalKey<FormState>();

  var titleController = TextEditingController();
  var timeController = TextEditingController();
  var dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit()..createDatabase(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (BuildContext context, AppStates state) {
          if (state is AppInsertDatabaseState) {
            Navigator.pop(context);
          }
        },
        builder: (BuildContext context, AppStates state) {
          AppCubit cubit = AppCubit.get(context); //instace of AppCubitq
          return Scaffold(
            key: scaffoldKey,
            appBar: AppBar(
                title: Text(
              cubit.titles[cubit.currentIndex],
            )),
            body: state is AppGetLoadingState
                ? const Center(child: CircularProgressIndicator())
                : cubit.screens[cubit.currentIndex],
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                //* Close the bottom sheet
                if (cubit.isBottomSheetShown) {
                  if (formKey.currentState!.validate()) {
                    // f('formState has a valid record');
                    cubit.insertToDatabase(
                      title: titleController.text,
                      time: timeController.text,
                      date: dateController.text,
                    );
                  } else {
                    logError('formState doesn\'t has a valid record');
                  }
                }
                //* Open the bottom sheet
                else {
                  scaffoldKey.currentState
                      ?.showBottomSheet(
                        (context) => Builder(builder: (context) {
                          return Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Form(
                              key: formKey,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  //* TASK
                                  defaultFormField(
                                      controller: titleController,
                                      type: TextInputType.text,
                                      label: 'Task Title',
                                      prefix: Icons.title,
                                      validate: (String value) {
                                        if (value.isEmpty) {
                                          return 'Title cannot be empty';
                                        }
                                        return null;
                                      }),
                                  const SizedBox(
                                    height: 15.0,
                                  ),
                                  //* TIME
                                  defaultFormField(
                                      controller: timeController,
                                      type: TextInputType.datetime,
                                      label: 'Task Time',
                                      prefix: Icons.watch_later_outlined,
                                      onTap: () {
                                        f('Timing Tapped');
                                        showTimePicker(
                                          context: context,
                                          initialTime: TimeOfDay.now(),
                                        ).then((value) {
                                          if (value != null) {
                                            timeController.text =
                                                value.format(context);
                                            f(timeController.text);
                                          }
                                        });
                                      },
                                      validate: (String value) {
                                        if (value.isEmpty) {
                                          return 'Time cannot be empty';
                                        }
                                        return null;
                                      }),
                                  const SizedBox(
                                    height: 15.0,
                                  ),
                                  //* Date
                                  defaultFormField(
                                      controller: dateController,
                                      type: TextInputType.datetime,
                                      label: 'Date Time',
                                      prefix: Icons.calendar_month_outlined,
                                      onTap: () {
                                        f('Date Tapped');
                                        showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime.now(),
                                          lastDate: DateTime.now()
                                              .add(Duration(days: 14)),
                                        ).then((value) {
                                          if (value != null) {
                                            dateController.text =
                                                DateFormat.yMMMd()
                                                    .format(value);
                                            f(dateController.text);
                                          }
                                        });
                                      },
                                      validate: (String value) {
                                        if (value.isEmpty) {
                                          return 'Date cannot be empty';
                                        }
                                        return null;
                                      }),
                                ],
                              ),
                            ),
                          );
                        }),
                      )
                      .closed
                      .then((value) {
                    //* closed.then used to prevent error of shownbottomsheet in case closed manually
                    cubit.changeBottomSheetState(
                        icon: Icons.edit, isShown: false);
                  });
                  cubit.changeBottomSheetState(icon: Icons.add, isShown: true);
                }
              },
              child: Icon(
                cubit.fabIcon,
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: cubit.currentIndex,
              onTap: (index) {
                cubit.changeScreen(index);
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.menu),
                  label: 'Tasks',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.check_circle_outline),
                  label: 'Done',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.archive_outlined),
                  label: 'Archived',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
