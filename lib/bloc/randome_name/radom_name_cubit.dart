import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';

class RandomeNameCubit extends Cubit<String> {
  RandomeNameCubit({required this.name}) : super(name);
  late String name;
  void randomName() {
    List names = ["oak", "tui", "army", "oat", "art", "pope", "lek"];
    // List a = name.split(" ").toList();
    // emit(a.length == 1
    //     ? name = "$name wansudon"
    //     : a[1] != "wansudon"
    //         ? name = "$name wansudon"
    //         : name);
    int rIndex = Random().nextInt(names.length);
    emit(name = names[rIndex]);
  }

  // void decrement() => emit("$state don't");
}
