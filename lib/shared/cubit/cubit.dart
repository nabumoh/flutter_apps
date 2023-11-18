import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_course/modules/archived_tasks/archived_tasks_screen.dart';
import 'package:learn_course/modules/done_tasks/done_tasks_screen.dart';
import 'package:learn_course/modules/new_tasks/new_tasks_screen.dart';
import 'package:learn_course/shared/cubit/states.dart';
import 'package:learn_course/shared/styles/styles.dart';
import 'package:sqflite/sqflite.dart';



class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  late Database database; // Declare database as late to initialize in initState
  List<Map> tasks = []; // map tasks for TodoList application

  bool isBottomSheetShown = false;
  IconData fabIcon = Icons.edit;

  List<Widget> screens = [
    NewTasksScreen(),
    DoneTasksScreen(),
    ArchivedTasksScreen(),
  ];

  List<String> titles = [
    'New Tasks',
    'Done Tasks',
    'Archived Tasks',
  ];

  void changeScreen(int index) {
    currentIndex = index;
    emit(AppChangeBottomNavBarState());
  }

  void changeBottomSheetState({
    required IconData icon,
    required bool isShown,
  }) {
    fabIcon = icon;
    isBottomSheetShown = isShown;
    emit(AppChangeBottomSheetState());
  }

  //* database functions
  void createDatabase() {
    openDatabase(
      'todo.db',
      version: 1,
      onCreate: (database, version) {
        f('database created');
        database.execute('''
                CREATE TABLE tasks (
                id INTEGER PRIMARY KEY,
                title TEXT,
                date TEXT,
                time TEXT,
                status TEXT
              )''').then(
          (value) {
            f('table created');
          },
        ).catchError(
          (onError) {
            logError('Error when creating table ${onError.toString()}');
          },
        );
      },
      onOpen: (database) {
        getFromDatabase(database).then(
          (value) {
            tasks = value;
            f('tasks list:\n$tasks');
            emit(AppGetDatabaseState());
          },
        );
        f('database opened');
      },
    ).then((value) {
      database = value;
      emit(AppCreateDatabaseState());
    });
  }

  insertToDatabase({
    @required title,
    @required time,
    @required date,
  }) async {
    await database.transaction((txn) => txn
            .rawInsert(
          'INSERT INTO tasks(title, date, time, status) VALUES("$title", "$date" , "$time" , "new")',
        )
            .then((value) {
          f('$value inserted successfully');
          emit(AppInsertDatabaseState());
          getFromDatabase(database).then(
            (value) {
              tasks = value;
              // f('tasks list:\n$tasks');
              emit(AppGetDatabaseState());
            },
          );
        }).catchError((onError) {
          logError('Error when Inserting new Record ${onError.toString()}');
        }));
  }

  Future<List<Map>> getFromDatabase(database) {
    emit(AppGetLoadingState());
    f('database fetched data successfully');
    return database.rawQuery('SELECT * FROM tasks');
  }
}
