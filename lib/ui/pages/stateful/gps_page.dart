import 'package:flutter/material.dart';
import 'package:flutter_geo/domain/use_case/controllers/theme_controller.dart';
import 'package:flutter_geo/ui/pages/stateful/screens/gps_screen.dart';
import 'package:flutter_geo/ui/widgets/appbar.dart';
import 'package:get/get.dart';

class GpsPage extends StatelessWidget {
  final ThemeController controller = Get.find();
  GpsPage({Key? key}) : super(key: key);

  // We create a Scaffold that is used for all the content pages
  // We only define one AppBar, and one scaffold.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        controller: controller,
        tile: const Text("Mi Ubicacion"),
        context: context,
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
          child: GpsScreen(),
        ),
      ),
    );
  }
}
