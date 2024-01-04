// Prak 2 Langkah 1
import 'package:flutter/material.dart';
import 'package:manajemen_state_flutter/models/plan.dart';
import 'package:manajemen_state_flutter/models/data_layers.dart';

// class PlanProvider extends InheritedNotifier<ValueNotifier<Plan>> {
//   const PlanProvider({super.key, required Widget child, required
//    ValueNotifier<Plan> notifier})
//   : super(child: child, notifier: notifier);

//   static ValueNotifier<Plan> of(BuildContext context) {
//    return context.
//     dependOnInheritedWidgetOfExactType<PlanProvider>()!.notifier!;
//   }
// }

// P3 Langkah 1
class PlanProvider extends
InheritedNotifier<ValueNotifier<List<Plan>>> {
  const PlanProvider({super.key, required Widget child, required
ValueNotifier<List<Plan>> notifier})
     : super(child: child, notifier: notifier);

  static ValueNotifier<List<Plan>> of(BuildContext context) {
    return context.
dependOnInheritedWidgetOfExactType<PlanProvider>()!.notifier!;
  }
}