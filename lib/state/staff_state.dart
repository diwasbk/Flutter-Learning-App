import 'package:flutter_learning_app/models/staff_model.dart';

class StaffState {
  final bool isLoading;
  final List<StaffModel> lstStaffs;

  StaffState({this.isLoading = false, this.lstStaffs = const []});

  StaffState copyWith({bool? isLoading, List<StaffModel>?lstStaffs}){
    return StaffState(
      isLoading: isLoading?? this.isLoading,
      lstStaffs: lstStaffs?? this.lstStaffs
    );
  }
}
