import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

// Immutable State/Provider
final appBarProvider = Provider<String>((ref) {
  return "Provider & StateProviders";
});

// Immutable State/Provider
final providerDefinationProvider = Provider<String>((ref) {
  return 'Provider is used to expose a value, while StateProvider is a specialized provider that allows you to manage and update a simple piece of state.';
});

// Immutable State/Provider
final stateProviderdefinationProvider = Provider<String>((ref) {
  return 'State Provider is ideal for managing simple state like counters, toggles, or form inputs, providing a straightforward way to read and update the state.';
});

// Mutable State/Provider
final counterProvider = StateProvider<int>((ref) {
  return 1;
});

class ProviderStateProviderScreen extends ConsumerWidget {
  const ProviderStateProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.arrow_back, color: Colors.white),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      ref.read(appBarProvider),
                      style: Theme.of(context).textTheme.headlineSmall
                          ?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
              Card(
                color: Colors.purple.shade600,
                margin: const EdgeInsets.all(16.0),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    ref.read(providerDefinationProvider),
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.purple.shade600,
                margin: const EdgeInsets.all(16.0),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8.0,
                  ),
                  child: Text(
                    ref.read(stateProviderdefinationProvider),
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Counter',
                        style: TextStyle(color: Colors.white70, fontSize: 18),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        ref.watch(counterProvider).toString(),
                        style: Theme.of(
                          context,
                        ).textTheme.displayLarge?.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'decrement',
            onPressed: () {
              ref.read(counterProvider.notifier).state--;
            },
            backgroundColor: Colors.red,
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 16),
          FloatingActionButton(
            heroTag: 'reset',
            onPressed: () {
              ref.read(counterProvider.notifier).state = 1;
            },
            backgroundColor: Colors.grey,
            child: const Icon(Icons.refresh),
          ),
          const SizedBox(width: 16),
          FloatingActionButton(
            heroTag: 'increment',
            onPressed: () {
              ref.read(counterProvider.notifier).state++;
            },
            backgroundColor: Colors.green,
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
