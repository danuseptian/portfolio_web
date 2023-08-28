import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_web/data/dashboard_data.dart';
import 'package:portfolio_web/module/dashboard/controller/dashboard_controller.dart';
import 'package:portfolio_web/module/home/view/home_view.dart';

import '../../about/view/about_view.dart';
import '../../contact/view/contact_view.dart';
import '../../project/view/project_view.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DashboardController controller = Get.put(DashboardController());
    return Scaffold(
      body: GetBuilder<DashboardController>(builder: (context) {
        return Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "asset/image/background.jpg",
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              if (controller.indexDashboard == 0) const HomeView(),
              if (controller.indexDashboard == 1) const ProjectView(),
              if (controller.indexDashboard == 2) const AboutView(),
              if (controller.indexDashboard == 3) const ContactView(),
              Container(
                  margin: const EdgeInsets.only(
                    left: 20.0,
                  ),
                  padding: const EdgeInsets.all(15),
                  decoration: const BoxDecoration(),
                  child: const FlutterLogo(
                    size: 100,
                    style: FlutterLogoStyle.markOnly,
                  )),
              Container(
                margin: const EdgeInsets.only(left: 150, top: 15),
                child: Row(
                  children: List.generate(
                    DashboardData.dashboardList.length,
                    (int index) {
                      var item = DashboardData.dashboardList[index];
                      return GestureDetector(
                        onTap: () async {
                          controller.onChangedIndexDashboard(index);
                        },
                        child: Container(
                          width: 70,
                          margin: const EdgeInsets.only(
                            right: 30.0,
                          ),
                          padding: const EdgeInsets.only(bottom: 3),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: controller.indexDashboard == index
                                    ? Colors.amber
                                    : Colors.transparent,
                                width: 4,
                              ),
                            ),
                          ),
                          child: Text(
                            item,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
