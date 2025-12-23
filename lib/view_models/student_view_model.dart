import 'package:flutter_learning_app/models/student_model.dart';
import 'package:flutter_learning_app/state/student_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Provider
final StudentViewModelProvider =
    NotifierProvider<StudentViewModel, StudentState>(() {
      return StudentViewModel();
    });

class StudentViewModel extends Notifier<StudentState> {
  @override
  StudentState build() {
    return StudentState();
  }

  Future<void> addStudent(StudentModel student) async {
    state = state.copyWith(isLoading: true);
    final updatedStudents = [...state.lstStudents, student];
    // Stop for 2 seconds
    await Future.delayed(Duration(seconds: 3));
    state = state.copyWith(isLoading: false, lstStudents: updatedStudents);
  }

  Future<void> loadStudents() async {
    state = state.copyWith(isLoading: true);
    await Future.delayed(Duration(seconds: 3));
    state = state.copyWith(isLoading: false);
  }
  
}
