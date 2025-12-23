import 'package:flutter/material.dart';
import 'package:flutter_learning_app/models/student_model.dart';
import 'package:flutter_learning_app/view_models/student_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NotifierProviderScreen extends ConsumerStatefulWidget {
  const NotifierProviderScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _NotifierProviderScreenState();
}

class _NotifierProviderScreenState
    extends ConsumerState<NotifierProviderScreen> {
  final fNameController = TextEditingController(text: "Diwas");
  final lNameController = TextEditingController(text: "Bk");
  final dobController = TextEditingController(text: "1997-01-01");

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final studentViewModel = ref.watch(StudentViewModelProvider);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.deepPurple.shade800,
              Colors.deepPurple.shade400,
              Colors.purple.shade300,
            ],
          ),
        ),
        child: SafeArea(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(Icons.arrow_back, color: Colors.white),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Notifier Provider',
                        style: Theme.of(context).textTheme.headlineSmall
                            ?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: fNameController,
                          decoration: InputDecoration(
                            labelText: 'First Name',
                            labelStyle: const TextStyle(color: Colors.white70),
                            filled: true,
                            fillColor: Colors.white.withValues(alpha: 0.1),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                            prefixIcon: const Icon(
                              Icons.person,
                              color: Colors.white70,
                            ),
                          ),
                          style: const TextStyle(color: Colors.white),
                        ),
                        const SizedBox(height: 16),
                        TextFormField(
                          controller: lNameController,
                          decoration: InputDecoration(
                            labelText: 'Last Name',
                            labelStyle: const TextStyle(color: Colors.white70),
                            filled: true,
                            fillColor: Colors.white.withValues(alpha: 0.1),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                            prefixIcon: const Icon(
                              Icons.person_outline,
                              color: Colors.white70,
                            ),
                          ),
                          style: const TextStyle(color: Colors.white),
                        ),
                        const SizedBox(height: 16),
                        TextFormField(
                          controller: dobController,
                          decoration: InputDecoration(
                            labelText: 'Date of Birth',
                            labelStyle: const TextStyle(color: Colors.white70),
                            filled: true,
                            fillColor: Colors.white.withValues(alpha: 0.1),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                            prefixIcon: const Icon(
                              Icons.calendar_today,
                              color: Colors.white70,
                            ),
                          ),
                          style: const TextStyle(color: Colors.white),
                          keyboardType: TextInputType.datetime,
                        ),
                        const SizedBox(height: 24),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                final student = StudentModel(
                                  fName: fNameController.text,
                                  lName: lNameController.text,
                                  dob: dobController.text,
                                );
                                ref.read(StudentViewModelProvider.notifier).addStudent(student);
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.deepPurple,
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: const Text(
                              'Add Student',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 32),
                        // Check State
                        studentViewModel.isLoading ? const CircularProgressIndicator() : ListView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: studentViewModel.lstStudents.length,
                                itemBuilder: (context, index) {
                                  final student = studentViewModel.lstStudents[index];
                                  return ListTile(
                                    title: Text(
                                      student.fName,
                                      style: const TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    trailing: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.delete,
                                        color: Colors.white,
                                      ),
                                    ),
                                  );
                                },
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
