import 'package:dependency_injection/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dependency Injection"),
      ),
      body: Center(
        child: Obx(() => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Nama: ${controller.nama.value}"),
            Text("Counter: ${controller.counter.value}"),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: controller.tambah,
              child: const Text("Tambah"),
            )
          ],
        )),
      ),
    );
  }
}