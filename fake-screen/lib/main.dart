import 'package:flutter/material.dart';

void main() {
  runApp(const ScaffoldMessenger(child: Program()));
}

class Program extends StatelessWidget {
  const Program({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        body: Center(
          child: ElevatedButton(
            style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.blue),
                shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)))),
                foregroundColor: WidgetStatePropertyAll(Colors.white)),
            onPressed: () {
              ScaffoldMessenger.of(context).showMaterialBanner(MaterialBanner(
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.all(5),
                  content: const Text("Merhaba Dünya",
                      style: TextStyle(color: Colors.white)),
                  leading: const Icon(Icons.notifications_active_outlined,
                      color: Colors.white),
                  elevation: 5,
                  backgroundColor: Colors.blue[300],
                  actions: [
                    TextButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context)
                              .hideCurrentMaterialBanner();
                        },
                        child: const Text("Kapat",
                            style: TextStyle(color: Colors.white)))
                  ]));
            },
            child: const Text("Open"),
          ),
        ),
      ),
    );
  }
}
