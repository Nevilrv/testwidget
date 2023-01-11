import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controller/home_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: GetBuilder<HomeController>(
        builder: (controller) {
          return Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Get.width * 0.09, vertical: Get.height * 0.02),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                commonIcon(Icons.home, controller),
                commonIcon(Icons.message, controller),
                commonIcon(Icons.notification_add, controller),
                commonIcon(Icons.account_circle_outlined, controller),
              ],
            ),
          );
        },
      ),
      body: GetBuilder<HomeController>(
        builder: (controller) {
          return Container(
            height: Get.height,
            width: Get.width,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Get.width * 0.07),
              child: Column(
                children: [
                  SizedBox(
                    height: Get.height * 0.06,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.menu_open,
                        color: controller.themeData.primaryColor,
                        size: Get.height * 0.035,
                      ),
                      const Spacer(),
                      Container(
                        height: Get.height * 0.07,
                        width: Get.height * 0.07,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: controller.themeData.primaryColor,
                              width: 1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(Get.height * 0.01),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(7),
                            child: Image.network(
                                'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dXNlciUyMHByb2ZpbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.07,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello David',
                            style: controller.themeData.textTheme.headline1,
                          ),
                          SizedBox(
                            height: Get.height * 0.005,
                          ),
                          Text(
                            'Welcome back',
                            style: controller.themeData.textTheme.headline2,
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        height: Get.height * 0.055,
                        width: Get.height * 0.065,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: controller.themeData.primaryColor,
                              width: 0.5),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                            padding: EdgeInsets.all(Get.height * 0.01),
                            child: Icon(
                              Icons.share,
                              color: controller.themeData.primaryColor,
                              size: Get.height * 0.029,
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.04,
                  ),
                  Container(
                    height: Get.height * 0.055,
                    width: Get.width,
                    decoration: BoxDecoration(
                        color: controller.themeData.hoverColor,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IntrinsicWidth(
                            child: TextField(
                              style: TextStyle(
                                  color: controller.themeData.splashColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700),
                              decoration: InputDecoration(
                                  hintText: "Search",
                                  prefixIconConstraints:
                                      const BoxConstraints(minWidth: 0),
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: Icon(
                                      Icons.search,
                                      color: controller.themeData.splashColor,
                                      size: 20,
                                    ),
                                  ),
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(
                                      color: controller.themeData.splashColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.05,
                  ),
                  Row(
                    children: [
                      commonCircle(
                          color: Color(0xffC0DEDE),
                          title: "230k",
                          subtitle: 'Sales',
                          icon: Icons.settings,
                          controller: controller),
                      Spacer(),
                      commonCircle(
                          color: Color(0xffE6DFF1),
                          title: "8.549k",
                          subtitle: 'Customers',
                          icon: Icons.account_circle_outlined,
                          controller: controller),
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.04,
                  ),
                  Row(
                    children: [
                      commonCircle(
                          color: Color(0xffF2EFEA),
                          title: "1.423k",
                          subtitle: 'Products',
                          icon: Icons.calendar_today,
                          controller: controller),
                      Spacer(),
                      commonCircle(
                          color: Color(0xffF1DFDD),
                          title: "\$9745",
                          subtitle: 'Revenue',
                          icon: Icons.reviews,
                          controller: controller),
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.04,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: FloatingActionButton(
                      backgroundColor: controller.darkMode == true
                          ? Colors.white
                          : Colors.black,
                      child: controller.darkMode == true
                          ? Icon(Icons.light_mode)
                          : Icon(Icons.dark_mode),
                      onPressed: () {
                        if (controller.darkMode == true) {
                          controller.changeMode(false);
                        } else {
                          controller.changeMode(true);
                        }
                      },
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Icon commonIcon(IconData icon, HomeController controller) {
    return Icon(
      icon,
      size: Get.height * 0.035,
      color: controller.themeData.primaryColor,
    );
  }

  CircleAvatar commonCircle(
      {Color? color,
      IconData? icon,
      String? title,
      subtitle,
      HomeController? controller}) {
    return CircleAvatar(
      radius: Get.height * 0.09,
      backgroundColor: color,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Icon(
          icon,
          color: Colors.black,
          size: Get.height * 0.03,
        ),
        SizedBox(
          height: Get.height * 0.01,
        ),
        Text(
          title!,
          style: TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: Get.height * 0.005,
        ),
        Text(
          subtitle,
          style: TextStyle(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ]),
    );
  }
}

// GetBuilder<HomeController>(
// builder: (controller) {
// if (controller.responseStatus == 'loading') {
// return const Center(
// child: CircularProgressIndicator(),
// );
// } else if (controller.responseStatus == 'complete') {
// List<HomeReponse> reponse = controller.data['data'];
// return SingleChildScrollView(
// scrollDirection: Axis.vertical,
// child: Column(
// children: List.generate(
// reponse.length,
// (index) => ListTile(
// onTap: () {},
// title: Text('${reponse[index].title}'),
// subtitle: Text('${reponse[index].body}'),
// ),
// ),
// ),
// );
// } else {
// return const Center(
// child: Text('ERROR'),
// );
// }
// },
// )
