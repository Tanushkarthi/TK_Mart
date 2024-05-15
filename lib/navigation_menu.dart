import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tk_mart/features/personalization/screens/settings/settings.dart';
import 'package:tk_mart/features/shop/screens/home/home.dart';
import 'package:tk_mart/features/shop/screens/wishlist/wishlist.dart';
import 'package:tk_mart/utils/constants/colors.dart';
import 'package:tk_mart/utils/helpers/helper_functions.dart';
import 'features/shop/screens/store/store.dart';

class NavigationMenu extends StatelessWidget {

  const NavigationMenu({

    super.key,

  });

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(NavigationController());
    final darkMode = TKMartHelperFunctions.isDarkMode(context);
    return Scaffold(

      bottomNavigationBar: Obx(
            () => NavigationBar(

              height: 70,
              elevation: 0,
              selectedIndex: controller.selectedIndex.value,
              onDestinationSelected: (index) => controller.selectedIndex.value = index,
              backgroundColor: darkMode ? TKMartColors.black : TKMartColors.white,
              indicatorColor: darkMode ? TKMartColors.white.withOpacity(0.1) : TKMartColors.black.withOpacity(0.1),
              destinations: [

                NavigationDestination(

                  icon: ShaderMask(

                    shaderCallback: (Rect bounds) {

                      return Theme.of(context).brightness == Brightness.dark ? const LinearGradient(

                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: <Color>[Colors.blueGrey, TKMartColors.primary],

                      ).createShader(bounds) : const LinearGradient(

                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: <Color>[Colors.lightBlue, Colors.blue],

                      ).createShader(bounds);
                      },

                    child: const Icon(Iconsax.home),

                  ),

                  label: 'Home',

                ),

                NavigationDestination(

                  icon: ShaderMask(

                    shaderCallback: (Rect bounds) {

                      return Theme.of(context).brightness == Brightness.dark ? const LinearGradient(

                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: <Color>[Colors.blueGrey, TKMartColors.primary],

                      ).createShader(bounds) : const LinearGradient(

                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: <Color>[Colors.lightBlue, Colors.blue],

                      ).createShader(bounds);
                      },

                    child: const Icon(Iconsax.shop),

                  ),

                  label: 'Store',

                ),

                NavigationDestination(

                  icon: ShaderMask(

                    shaderCallback: (Rect bounds) {

                      return Theme.of(context).brightness == Brightness.dark ? const LinearGradient(

                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: <Color>[Colors.blueGrey, TKMartColors.primary],

                      ).createShader(bounds) : const LinearGradient(

                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: <Color>[Colors.lightBlue, Colors.blue],

                      ).createShader(bounds);
                      },

                    child: const Icon(Iconsax.heart),

                  ),

                  label: 'Wishlist',

                ),

                NavigationDestination(

                  icon: ShaderMask(

                    shaderCallback: (Rect bounds) {

                      return Theme.of(context).brightness == Brightness.dark ? const LinearGradient(

                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: <Color>[Colors.blueGrey, TKMartColors.primary],

                      ).createShader(bounds) : const LinearGradient(

                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: <Color>[Colors.lightBlue, Colors.blue],

                      ).createShader(bounds);
                      },

                    child: const Icon(Iconsax.user),

                  ),

                  label: 'Profile',
                ),
              ],
            ),
      ),

      body: Obx(() => controller.screens[controller.selectedIndex.value]),

    );
  }
}

class NavigationController extends GetxController{

  final Rx<int> selectedIndex = 0.obs;
  final screens = [const HomeScreen(), const StoreScreen(), const FavouriteScreen(), const SettingsScreen()];

}
