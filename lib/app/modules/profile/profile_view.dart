import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schultzim/app/common_widgets/profile_container.dart';
import 'package:schultzim/app/routes/app_routes.dart';
import 'package:schultzim/app/utils/app_colors.dart';
import 'package:schultzim/app/utils/app_images.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primarycolor,
      body: Column(
        children: [
          Container(
            height: Get.height * 0.25,
            child: Row(
              children: [
                SizedBox(width: 5),
                Image.asset(AppImages.profile, height: 50, width: 50),
                SizedBox(width: 5),

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Rayhan',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),

                    Text(
                      'Rayhantmt@gmail.com',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: GestureDetector(
                    onTap: () => Get.toNamed(AppRoutes.editprofile),
                    child: Icon(Icons.edit_square, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    ProfileContainer(
                      tiitle: 'Personal Information',
                      ic: Icon(Icons.person, color: AppColors.primarycolor),
                    ),
                    GestureDetector(
                      onTap: () => Get.toNamed(AppRoutes.changepasswordprofile),
                      child: ProfileContainer(
                        tiitle: 'Password Change',
                        ic: Icon(Icons.lock, color: AppColors.primarycolor),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Get.toNamed(AppRoutes.notifications),
                      child: ProfileContainer(
                        tiitle: "Notification",
                        ic: Icon(
                          Icons.notifications,
                          color: AppColors.primarycolor,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Get.toNamed(AppRoutes.help),
                      child: ProfileContainer(
                        tiitle: 'Help & Support',
                        ic: Icon(
                          Icons.info_outlined,
                          color: AppColors.primarycolor,
                        ),
                      ),
                    ),
                    ExpansionTile(
                      title: Text("Legal & Compliance"),

                      leading: Icon(
                        Icons.insert_drive_file_outlined,
                        color: AppColors.primarycolor,
                      ),
                      trailing: Icon(Icons.arrow_drop_down),
                      children: [
                        Container(
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () => Get.toNamed(AppRoutes.privacy),
                                child: Text("Privacy Policy")),
                              SizedBox(height: 20),
                              GestureDetector(
                                onTap: () => Get.toNamed(AppRoutes.term),
                                child: Text("Term of Use")),
                              SizedBox(height: 20),
                              GestureDetector(
                                onTap: () => Get.toNamed(AppRoutes.faq),
                                child: Text('FAQ')),
                              SizedBox(height: 10,),
                            ],
                          ),
                        ),
                      ],
                    ),

                    ProfileContainer(
                      tiitle: 'Payment Mathoad',
                      ic: Icon(Icons.payment, color: AppColors.primarycolor),
                    ),
                    GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return Dialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Container(
                                height: Get.height * 0.4,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 10,
                                    right: 10,
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      CircleAvatar(
                                        radius: 30,
                                        backgroundColor: Color(0xffDC143C),
                                        child: Icon(
                                          Icons.logout_outlined,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        'Are you sure you want to log out of your account?',
                                      ),
                                      GestureDetector(
                                        onTap: () =>
                                            Get.offAllNamed(AppRoutes.login),
                                        child: Container(
                                          height: 50,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              99,
                                            ),
                                            color: Color(0xffDC143C),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Confirm Log Out',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),

                                      GestureDetector(
                                        onTap: () => Navigator.pop(context),
                                        child: Container(
                                          height: 50,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              99,
                                            ),
                                            color: Color(0xffF3F4F6),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Cancel',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14,
                                                color: Color(0xff727272),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },

                      child: Row(
                        children: [
                          Icon(
                            Icons.power_settings_new,
                            color: Color(0xffDF0505),
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Log out',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Color(0xffDF0505),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
