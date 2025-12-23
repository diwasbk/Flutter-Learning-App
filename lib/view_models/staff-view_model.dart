import 'package:flutter_learning_app/models/staff_model.dart';
import 'package:flutter_learning_app/state/staff_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Provider
final StaffViewModelProvider =
    NotifierProvider<StaffViewModel, StaffState>(() {
      return StaffViewModel();
    });

class StaffViewModel extends Notifier<StaffState> {
  @override
  StaffState build() {
    return StaffState();
  }

  Future<void> addStaff(StaffModel staff) async {
    state = state.copyWith(isLoading: true);
    final updatedStaffs = [...state.lstStaffs, staff];
    await Future.delayed(Duration(seconds: 3));
    state = state.copyWith(isLoading: false, lstStaffs: updatedStaffs);
  }
}
