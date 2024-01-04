import 'package:flutter/material.dart';
import 'package:manajemen_state_flutter/models/plan.dart';
import 'package:manajemen_state_flutter/providers/plan_provider.dart';
import 'package:manajemen_state_flutter/views/plan_creator_screen.dart';

void main() => runApp(const MasterPlanApp());
//Prak 1 Langkah 5
class MasterPlanApp extends StatelessWidget {
  const MasterPlanApp({Key? key}) : super(key: key);

  // Widget build(BuildContext context) {
  //   //Prak 2 Langkah 2
  //   return MaterialApp(
  //     theme: ThemeData(primarySwatch: Colors.purple),
  //     home: PlanProvider(
  //       notifier: ValueNotifier<Plan>(const Plan()),
  //       child: const PlanScreen(),
  //     ),
  //   );
  // }

  //Prak 3 Langkah 2
  @override
  Widget build(BuildContext context) {
    return PlanProvider(
      notifier: ValueNotifier<List<Plan>>(const []),
      child: MaterialApp(
        title: 'State management app',
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        // home: const PlanScreen(),
        
        // Prak 3 Langkah 9
        home: const PlanCreatorScreen(),
      ),
    );
  }
}