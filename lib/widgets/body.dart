import 'package:flutter/material.dart';

import 'curve_app_bar.dart';

class Body extends StatelessWidget {
  final List<Widget> children;
  final EdgeInsets padding;
  final Widget floatingActionButton;
  final CrossAxisAlignment crossAxisAlignment;
  final bool overlapAppBar;
  Body(
      {this.children,
      this.padding = const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      this.floatingActionButton,
      this.crossAxisAlignment = CrossAxisAlignment.start,
      this.overlapAppBar = false})
      : super();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: floatingActionButton,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CurveAppBar(),
            Padding(
              padding: padding.copyWith(top: overlapAppBar ? 0.0 : 168.0),
              child: Column(
                crossAxisAlignment: crossAxisAlignment,
                children: children,
              ),
            )
          ],
        ),
      ),
    );
  }
}

// class SafeBody extends StatelessWidget {
//   final Widget child;
//   final EdgeInsets padding;
//   final Widget floatingActionButton;
//   SafeBody(
//       {this.child,
//       this.padding = const EdgeInsets.fromLTRB(16.0, 128.0, 16.0, 16.0),
//       this.floatingActionButton})
//       : super();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: floatingActionButton,
//       body: Padding(
//         padding: padding,
//         child: CustomScrollView(
//           slivers: [
//             SliverPersistentHeader(
//               pinned: true,
//               delegate: CurveAppBarDelegate(),
//             ),
//             SliverFillRemaining(
//               hasScrollBody: true,
//               fillOverscroll: false,
//               child: child,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
