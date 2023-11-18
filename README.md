# learn_course

Flutter projects.

## Getting Started

This project is a learning Udemy course for a Flutter application



****************************** General info **********************************

Project has few sub-projects :

    * Todo App
    * BMI Calculator App
    * Massenger App


****************************** TODO App - MVC Architecture **********************************

--root
    --lib
        --main.dart
        --pubspec.yaml
        --bloc_observer.dart
        --layout
            --home_layout.dart
        --models
            --user_model.dart
        --modules
            --home
            --new_tasks
            --archived_tasks
            --done_tasks
            --shared
                --components
                    --components.dart
                    --constants.dart
                --cubit
                    --cubit.dart
                    --states.dart
                --network
                    --local
                    --remote
                --styles
                    --colors.dart
                    --styles.dart


****************************** main.dart DB flow **********************************

// DB flow

  * 1. create DB
  * 2. create tables
  * 3. open DB
  * 4. insert DB
  * 5. get DB
  * 6. update DB
  * 7. delete from DB


// DB handling

   * async - opens a thread in main
   * await - to wait thread finish
   * then - runs thread in background ,'then' could be useful
   * if the process takes too long so it will put it last by
   * threads sequence unlike try/catch option
   * throw - used to generate error

    * the usage of Future<String> serves the needs of getting
    * data from DB 

