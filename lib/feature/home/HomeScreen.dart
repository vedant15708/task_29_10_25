// import 'package:flutter/material.dart';
// import 'package:task_29_10_25/core/utils/constant.dart';
// import 'model/store_model.dart';
//
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   int _selectedIndex = 0;
//
//   static final List<Widget> _widgetOptions = <Widget>[
//     Column(
//       children: [
//          DeliveryHeader(),
//         Expanded(
//           child: ListView.builder(
//             padding: const EdgeInsets.symmetric(horizontal: 16.0),
//             itemCount: storeData.length,
//             itemBuilder: (context, index) {
//               final store = storeData[index];
//               return StoreCard(store: store);
//             },
//           ),
//         ),
//       ],
//     ),
//
//     const Center(
//       child: Text('My Orders Page', style: TextStyle(fontSize: 24)),
//     ),
//
//     const Center(
//       child: Text('Profile Page', style: TextStyle(fontSize: 24)),
//     ),
//   ];
//
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[100],
//
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 1.0,
//         leading: const IconWithBadge(
//           icon: Icons.notifications,
//           badgeCount: 2,
//         ),
//         title: const Text(
//           'Huge Basket',
//           style: TextStyle(
//             color: Color(0xFF44B12C),
//             fontWeight: FontWeight.bold,
//             fontSize: 22,
//           ),
//         ),
//         centerTitle: true,
//         iconTheme: const IconThemeData(color: Colors.black),
//         actionsIconTheme: const IconThemeData(color: Colors.black),
//         actions: const [
//           IconWithBadge(
//             icon: Icons.shopping_cart,
//             badgeCount: 2,
//           ),
//           SizedBox(width: 8),
//         ],
//       ),
//
//       body: _widgetOptions.elementAt(_selectedIndex),
//
//       bottomNavigationBar: BottomNavigationBar(
//         items: <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             label: 'Stores',
//             icon: const Icon(Icons.store_mall_directory_outlined),
//             activeIcon: const Icon(Icons.store_mall_directory),
//           ),
//
//           BottomNavigationBarItem(
//             label: 'My Orders',
//             icon: WidgetWithBadge(
//               badgeCount: 2,
//               iconWidget: _MyOrdersCustomIcon(
//                 color: Colors.grey,
//               ),
//             ),
//             activeIcon: WidgetWithBadge(
//               badgeCount: 2,
//               iconWidget: _MyOrdersCustomIcon(
//                 color: const Color(0xFF44B12C),
//               ),
//             ),
//           ),
//
//           BottomNavigationBarItem(
//             label: 'Profile',
//             icon: const Icon(Icons.person_outline),
//             activeIcon: const Icon(Icons.person),
//           ),
//         ],
//
//
//         currentIndex: _selectedIndex,
//         onTap: _onItemTapped,
//         backgroundColor: const Color(0xF0F0F6EE),
//         selectedItemColor: const Color(0xFF44B12C),
//         unselectedItemColor: Colors.grey,
//         selectedFontSize: 12,
//         unselectedFontSize: 12,
//         type: BottomNavigationBarType.fixed,
//         elevation: 0.0,
//       )
//     );
//   }
// }
//
//
// class DeliveryHeader extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       color: const Color(0xFFF0F6EE),
//       padding: const EdgeInsets.symmetric(vertical: 20.0),
//       alignment: Alignment.center,
//       child: Text(
//         AppConstants.nextDeliveryText,
//         style: const TextStyle(
//           color: Color(0xFF44B12C),
//           fontSize: 20,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//     );
//   }
// }
//
// class StoreCard extends StatelessWidget {
//   final Store store;
//   const StoreCard({Key? key, required this.store}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 3,
//       color: Colors.white,
//       margin: const EdgeInsets.symmetric(vertical: 8.0),
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             _buildImageWithRating(),
//
//             const SizedBox(width: 16),
//             _buildStoreInfo(),
//             const SizedBox(width: 10),
//             Text(
//               store.distance,
//               style: const TextStyle(
//                 fontSize: 14,
//                 color: Colors.black54,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildImageWithRating() {
//     return Stack(
//       clipBehavior: Clip.none,
//       children: [
//         CircleAvatar(
//           radius: 35,
//             backgroundImage: AssetImage(store.imageUrl)
//         ),
//         Positioned(
//           bottom: -4,
//           left:15,
//           child: Container(
//             padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
//             decoration: BoxDecoration(
//               color: const Color(0xFF44B12C),
//               borderRadius: BorderRadius.circular(12),
//
//             ),
//             child: Row(
//               children: [
//                 const Icon(Icons.star, color: Colors.white, size: 12),
//                 const SizedBox(width: 2),
//                 Text(
//                   store.rating.toString(),
//                   style: const TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 12,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
//
//   Widget _buildStoreInfo() {
//     return Expanded(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             store.name,
//             style: const TextStyle(
//               fontSize: 18,
//               fontWeight: FontWeight.bold,
//               color: Colors.black87,
//             ),
//           ),
//           const SizedBox(height: 4),
//           Text(
//             store.category,
//             style: const TextStyle(fontSize: 14, color: Colors.grey),
//           ),
//           const SizedBox(height: 4),
//           Text(
//             store.address,
//             style: const TextStyle(fontSize: 14, color: Colors.grey),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class IconWithBadge extends StatelessWidget {
//   final IconData icon;
//   final int badgeCount;
//
//   const IconWithBadge({
//     Key? key,
//     required this.icon,
//     required this.badgeCount,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return IconButton(
//       icon: Stack(
//         clipBehavior: Clip.none,
//         children: [
//           Icon(icon),
//           Positioned(
//             top: -3,
//             right: -3,
//             child: Container(
//               height: 14,
//               width: 14,
//               alignment: Alignment.center,
//               decoration: const BoxDecoration(
//                 color: Color(0xFF44B12C),
//                 shape: BoxShape.circle,
//               ),
//               child: Text(
//                 '$badgeCount',
//                 style: const TextStyle(
//                   color: Colors.white,
//                   fontSize: 9,
//                   fontWeight: FontWeight.bold,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//             ),
//           ),
//         ],
//       ),
//       onPressed: () {
//       },
//     );
//   }
// }
//
//
// class WidgetWithBadge extends StatelessWidget {
//   final Widget iconWidget;
//   final int badgeCount;
//
//   const WidgetWithBadge({
//     Key? key,
//     required this.iconWidget,
//     required this.badgeCount,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       clipBehavior: Clip.none,
//       children: [
//         iconWidget,
//         Positioned(
//           top: -3,
//           right: -8,
//           child: Container(
//             height: 16,
//             width: 16,
//             alignment: Alignment.center,
//             decoration: const BoxDecoration(
//               color: Color(0xFF44B12C),
//               shape: BoxShape.circle,
//             ),
//             child: Text(
//               '$badgeCount',
//               style: const TextStyle(
//                 color: Colors.white,
//                 fontSize: 10,
//                 fontWeight: FontWeight.bold,
//               ),
//               textAlign: TextAlign.center,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
//
//
// class _MyOrdersCustomIcon extends StatelessWidget {
//   final Color color;
//   const _MyOrdersCustomIcon({Key? key, required this.color}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Icon(
//           Icons.list_alt_outlined,
//           color: color,
//           size: 30,
//         ),
//         Positioned(
//           bottom: 1,
//           right: -1,
//           child: Container(
//             padding: const EdgeInsets.all(1),
//             decoration: BoxDecoration(
//               color: Colors.grey,
//               shape: BoxShape.circle,
//             ),
//             child: Icon(
//               Icons.shopping_cart,
//               color: Colors.white,
//               size: 10,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

























import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_29_10_25/core/utils/constant.dart';
import 'model/store_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    Column(
      children: [
        DeliveryHeader(),
        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            itemCount: storeData.length,
            itemBuilder: (context, index) {
              final store = storeData[index];
              return StoreCard(store: store);
            },
          ),
        ),
      ],
    ),
    const Center(child: Text('My Orders Page', style: TextStyle(fontSize: 24))),
    const Center(child: Text('Profile Page', style: TextStyle(fontSize: 24))),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: const IconWithBadge(icon: Icons.notifications, badgeCount: 2),
        title: Text(
          'Huge Basket',
          style: TextStyle(
            color: const Color(0xFF44B12C),
            fontWeight: FontWeight.bold,
            fontSize: 22.sp,
          ),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
        actions: const [
          IconWithBadge(icon: Icons.shopping_cart, badgeCount: 2),
          SizedBox(width: 8),
        ],
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'Stores',
            icon: const Icon(Icons.store_mall_directory_outlined),
            activeIcon: const Icon(Icons.store_mall_directory),
          ),
          BottomNavigationBarItem(
            label: 'My Orders',
            icon: WidgetWithBadge(
              badgeCount: 2,
              iconWidget: _MyOrdersCustomIcon(color: Colors.grey),
            ),
            activeIcon: WidgetWithBadge(
              badgeCount: 2,
              iconWidget: _MyOrdersCustomIcon(color: Color(0xFF44B12C)),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: const Icon(Icons.person_outline),
            activeIcon: const Icon(Icons.person),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: const Color(0xFFF0F6EE),
        selectedItemColor: const Color(0xFF44B12C),
        unselectedItemColor: Colors.grey,
        selectedFontSize: 12.sp,
        unselectedFontSize: 12.sp,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
      ),
    );
  }
}

class DeliveryHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xFFF0F6EE),
      padding: EdgeInsets.symmetric(vertical: 20.h),
      alignment: Alignment.center,
      child: Text(
        AppConstants.nextDeliveryText,
        style: TextStyle(
          color: const Color(0xFF44B12C),
          fontSize: 20.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class StoreCard extends StatelessWidget {
  final Store store;
  const StoreCard({Key? key, required this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 8.h),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildImageWithRating(),
            SizedBox(width: 16.w),
            _buildStoreInfo(),
            SizedBox(width: 10.w),
            Text(
              store.distance,
              style: TextStyle(fontSize: 14.sp, color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImageWithRating() {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        CircleAvatar(
          radius: 35.r,
          backgroundImage: AssetImage(store.imageUrl),
        ),
        Positioned(
          bottom: -4.h,
          left: 15.w,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 3.h),
            decoration: BoxDecoration(
              color: const Color(0xFF44B12C),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Row(
              children: [
                const Icon(Icons.star, color: Colors.white, size: 12),
                SizedBox(width: 2.w),
                Text(
                  store.rating.toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 12.sp,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildStoreInfo() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            store.name,
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 4.h),
          Text(store.category,
              style: TextStyle(fontSize: 14.sp, color: Colors.grey)),
          SizedBox(height: 4.h),
          Text(store.address,
              style: TextStyle(fontSize: 14.sp, color: Colors.grey)),
        ],
      ),
    );
  }
}

class IconWithBadge extends StatelessWidget {
  final IconData icon;
  final int badgeCount;

  const IconWithBadge({Key? key, required this.icon, required this.badgeCount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Stack(
        clipBehavior: Clip.none,
        children: [
          Icon(icon, size: 26.w),
          Positioned(
            top: -3.h,
            right: -3.w,
            child: Container(
              height: 14.w,
              width: 14.w,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Color(0xFF44B12C),
                shape: BoxShape.circle,
              ),
              child: Text(
                '$badgeCount',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 9.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
      onPressed: () {},
    );
  }
}

class WidgetWithBadge extends StatelessWidget {
  final Widget iconWidget;
  final int badgeCount;

  const WidgetWithBadge({
    Key? key,
    required this.iconWidget,
    required this.badgeCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        iconWidget,
        Positioned(
          top: -3.h,
          right: -8.w,
          child: Container(
            height: 16.w,
            width: 16.w,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Color(0xFF44B12C),
              shape: BoxShape.circle,
            ),
            child: Text(
              '$badgeCount',
              style: TextStyle(
                color: Colors.white,
                fontSize: 10.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _MyOrdersCustomIcon extends StatelessWidget {
  final Color color;
  const _MyOrdersCustomIcon({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Icon(Icons.list_alt_outlined, color: color, size: 30.w),
        Positioned(
          bottom: 1.h,
          right: -1.w,
          child: Container(
            padding: EdgeInsets.all(1.w),
            decoration: const BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.shopping_cart, color: Colors.white, size: 10.w),
          ),
        ),
      ],
    );
  }
}
