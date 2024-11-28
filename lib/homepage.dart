import 'package:flutter/material.dart';
import 'package:homework/task.dart';
import 'add_task_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Task> tasks = [];

  void addTask(Task task) {
    setState(() {
      tasks.add(task);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("To-Do List App"),
        backgroundColor: Colors.deepPurple[600],
      ),
      body: tasks.isEmpty
          ? const Center(child: Text("No tasks yet. Add some!"))
          : ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                final task = tasks[index];
                return Container(
                  margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: task.isComplated ? Colors.green[50] : Colors.orange[50],
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 6,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.deepPurple[400],
                      child: Text("${index + 1}", style: const TextStyle(color: Colors.white)),
                    ),
                    title: Text(task.title ?? "No Title", style: const TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text(task.describtion ?? "No Description"),
                    trailing: IconButton(
                      onPressed: () {
                        setState(() {
                          task.isComplated = !task.isComplated;
                        });
                      },
                      icon: Icon(
                        task.isComplated ? Icons.check_circle : Icons.circle,
                        color: task.isComplated ? Colors.green : Colors.grey,
                      ),
                    ),
                  ),
                );
              }),
      floatingActionButton: SizedBox(
        width: 100,
        child: FloatingActionButton(
          backgroundColor: Colors.deepPurple[600],
          onPressed: () async {
            final newTask = await Navigator.push<Task>(
              context,
              MaterialPageRoute(
                builder: (context) => const AddTaskPage(),
              ),
            );

            if (newTask != null) {
              addTask(newTask);
            }
          },
          child: const Icon(Icons.add, size: 30),
        ),
      ),
    );
  }
}
