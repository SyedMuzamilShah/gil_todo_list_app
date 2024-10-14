import 'package:flutter/material.dart';
import 'package:todo_list_app/views/addtask/task_add_view.dart';
import 'package:todo_list_app/views/detailstask/task_details_view.dart';
import 'package:todo_list_app/views/home/home_view.dart';
// This Class is For Rendering the user on Different Screen
class RouteGenerator {

  // url name define here
  static const String homeView = "login-view";
  static const String taskAddView = "task-add-view";
  static const String taskDetailView = "task-detalis-view";
  

  // This function redirects the user to the url metched page (Perform switch case).
  static Route<dynamic> routeGenerate(RouteSettings settings) {

    // settings parameters provided the name of url then we simple check
    switch (settings.name) {

      // Login Page
      case homeView: 
        return MaterialPageRoute(
          builder: (context) => const HomeView(),
        );

      // Singup Page
      case taskAddView: 
        return MaterialPageRoute(
          builder: (context) => const TaskAddView(),
        );

      // Home Page
      case taskDetailView: 
        return MaterialPageRoute(
          builder: (context) => const TaskDetailsView(),
        );



      // If user entered Wrong url then redirect On Error Text Page
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}', style: const TextStyle(
                color: Colors.red
              ),),
            ),
          )
        );
    }
  } 
}