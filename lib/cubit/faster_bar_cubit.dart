import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'faster_bar_state.dart';

class FasterBarCubit extends Cubit<FasterBarState> {
  FasterBarCubit() : super(FasterBarInitial());
  int chooes=0;
  Color colorr=Colors.black12;

  void takeIt(int index){
    chooes=index;

    emit(selectIt());
  }
  Color ?x(int index){
    if (chooes==index){
      return Colors.red;
    }else{
      return Colors.black12;
    }
    emit(ColorIt());

  }

}
