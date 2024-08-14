import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:worksshop_tutorial/controllers/visibility_controller.dart';

class NewScreen extends StatelessWidget {
  const NewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final VisibilityController visibilityController =
        Get.put(VisibilityController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'Hello',
              style: TextStyle(fontSize: 24),
            ),
            const VStack(
              [
                Text('Hello'),
                Text('World'),
                Text('Flutter'),
                Text('Getx'),
              ],
            ),
            "sangam".text.xl6.bold.red500.make().glassMorphic(height: 200),
            Obx(
              () {
                return TextField(
                  obscureText: visibilityController.isVisible.value,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      onPressed: () {
                        visibilityController.toggle();
                      },
                      icon: Icon(visibilityController.isVisible.value
                          ? Icons.visibility
                          : Icons.visibility_off),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
