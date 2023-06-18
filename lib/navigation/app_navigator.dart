import 'package:finance/shared/constants/durations.dart';
import 'package:flutter/material.dart';

/// Wrapper around Flutter's default [Navigator] to standardize and abstract calls around the app
class AppNavigator {
  /// Navigation Key used at the root of the application (inside the [MaterialApp])
  /// It should only be used outside of this class by the root [Navigator]
  @protected
  static GlobalKey<NavigatorState> rootNavigationKey = GlobalKey(debugLabel: 'rootKey');

  /// Push a new page on top of the navigation stack
  static Future<R?> push<R>(Route<R> route, {BuildContext? context}) {
    return _navigator(context).push(route);
  }

  /// Push a new page to replace the current page on top of the navigation stack
  static Future<R?> pushReplacement<R>(Route<R> route, {BuildContext? context}) {
    return _navigator(context).pushReplacement(route);
  }

  /// Clear the whole navigtion stack then push a new page
  static Future<R?> pushAndRemoveUntilRoot<R>(Route<R> route, {BuildContext? context}) {
    return _navigator(context).pushAndRemoveUntil(route, (route) => false);
  }

  /// Remove the current page from the navigation stack
  static void close({BuildContext? context}) {
    closeWithResult(null, context: context);
  }

  /// Remove the current page from the navigation stack and return some data with it
  static void closeWithResult<T>(T result, {BuildContext? context}) {
    if (_navigator(context).canPop()) {
      _navigator(context).pop(result);
    }
  }

  /// Remove every page from the navigation stack until there is only one left
  static void popUntilRoot(BuildContext context) {
    Navigator.of(context).popUntil((route) => false);
  }

  /// Remove every page from the navigation stack until one has the name provided
  static void popUntilPageWithName(BuildContext context, String title) {
    Navigator.of(context).popUntil(ModalRoute.withName(title));
  }

  static NavigatorState _navigator(BuildContext? context) {
    if (context != null) {
      return Navigator.of(context);
    }
    return rootNavigationKey.currentState!;
  }
}

/// Class containing preset routes transitions animations
class Routes {
  /// Route with no transition animation
  static Route<T> noTransition<T>(
    Widget page, {
    String? pageName,
    bool opaque = true,
  }) {
    return PageRouteBuilder<T>(
      opaque: opaque,
      transitionDuration: Duration.zero,
      settings: RouteSettings(name: pageName ?? page.runtimeType.toString()),
      pageBuilder: (_, __, ___) => page,
    );
  }

  /// Route with a fade in animation
  static Route<T> fadeIn<T>(
    Widget page, {
    Duration transitionDuration = const MediumDuration(),
    String? pageName,
    bool opaque = true,
    bool fadeOut = true,
    bool fullScreenDialog = false,
  }) {
    return PageRouteBuilder<T>(
      opaque: opaque,
      transitionDuration: transitionDuration,
      settings: RouteSettings(name: pageName ?? page.runtimeType.toString()),
      pageBuilder: (_, __, ___) => page,
      transitionsBuilder: _Transitions.fadeIn(fadeOut: fadeOut),
      fullscreenDialog: fullScreenDialog,
    );
  }

  /// Route with a delayed fade in animation
  static Route<T> fadeInWithDelay<T>(
    Widget page, {
    Duration transitionDuration = const LongDuration(),
    String? pageName,
    double animationDelayPercent = 0.5,
    bool opaque = true,
    bool fadeOut = true,
    bool fullScreenDialog = false,
  }) {
    return PageRouteBuilder<T>(
      opaque: opaque,
      transitionDuration: transitionDuration,
      settings: RouteSettings(name: pageName ?? page.runtimeType.toString()),
      pageBuilder: (_, __, ___) => page,
      transitionsBuilder: _Transitions.fadeInWithDelay(
        fadeOut: fadeOut,
        animationDelayPercent: animationDelayPercent,
      ),
      fullscreenDialog: fullScreenDialog,
    );
  }

  /// Route with a material animation
  static Route<T> material<T>(
    Widget page, {
    bool fullScreenDialog = false,
    String? pageName,
  }) {
    return MaterialPageRoute(
      builder: (context) => page,
      settings: RouteSettings(name: pageName ?? page.runtimeType.toString()),
      fullscreenDialog: fullScreenDialog,
    );
  }

  /// Route with a slide animation coming from the bottom
  static Route<T> slideBottom<T>(
    Widget page, {
    Duration transitionDuration = const MediumDuration(),
    bool fullScreenDialog = false,
    String? pageName,
    bool opaque = true,
  }) {
    return PageRouteBuilder<T>(
      opaque: opaque,
      transitionDuration: transitionDuration,
      fullscreenDialog: fullScreenDialog,
      settings: RouteSettings(name: pageName ?? page.runtimeType.toString()),
      pageBuilder: (_, __, ___) => page,
      transitionsBuilder: _Transitions.slide(_Side.bottom),
    );
  }

  /// Route with a slide animation coming from the side
  static Route<T> slideSide<T>(
    Widget page, {
    Duration transitionDuration = const MediumDuration(),
    bool fullScreenDialog = false,
    String? pageName,
    bool opaque = true,
  }) {
    return PageRouteBuilder<T>(
      opaque: opaque,
      transitionDuration: transitionDuration,
      fullscreenDialog: fullScreenDialog,
      settings: RouteSettings(name: pageName ?? page.runtimeType.toString()),
      pageBuilder: (_, __, ___) => page,
      transitionsBuilder: _Transitions.slide(_Side.side),
    );
  }
}

/// Class containing preset transitions animations
class _Transitions {
  /// Fade in transition
  static RouteTransitionsBuilder fadeIn({required bool fadeOut}) {
    return (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: Tween<double>(begin: 0, end: 1).animate(
          animation,
        ),
        child: fadeOut
            ? FadeTransition(
                opacity: Tween<double>(begin: 1, end: 0).animate(
                  secondaryAnimation,
                ),
                child: child,
              )
            : child,
      );
    };
  }

  /// Fade in transition with a delay
  static RouteTransitionsBuilder fadeInWithDelay({required bool fadeOut, required double animationDelayPercent}) {
    return (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: Tween<double>(begin: 0, end: 1).animate(
          _delayed(animation, animationDelayPercent),
        ),
        child: fadeOut
            ? FadeTransition(
                opacity: Tween<double>(begin: 1, end: 0).animate(
                  _delayed(secondaryAnimation, animationDelayPercent),
                ),
                child: child,
              )
            : child,
      );
    };
  }

  static CurvedAnimation _delayed(Animation<double> animation, double delayPercentage) {
    return CurvedAnimation(parent: animation, curve: Interval(delayPercentage, 1));
  }

  /// Slide transition
  /// Can slide from the bottom or the side
  static RouteTransitionsBuilder slide(_Side side) {
    return (context, animation, secondaryAnimation, child) {
      return SlideTransition(
        position: Tween<Offset>(
          begin: switch (side) {
            _Side.side => const Offset(1, 0), // Top Right
            _Side.bottom => const Offset(0, 1), // Bottom Left
          },
          end: switch (side) {
            _Side.side => Offset.zero, // Top Left
            _Side.bottom => Offset.zero, // Top Left
          },
        ).animate(
          CurvedAnimation(parent: animation, curve: Curves.easeOutQuint),
        ),
        child: child,
      );
    };
  }
}

enum _Side {
  side,
  bottom,
}
