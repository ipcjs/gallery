import 'package:flutter/material.dart';
import 'package:gallery/themes/gallery_theme_data.dart';

class ThemeDataDemo extends StatefulWidget {
  const ThemeDataDemo();

  @override
  _ThemeDataDemoState createState() => _ThemeDataDemoState();
}

class _ThemeDataDemoState extends State<ThemeDataDemo> {
  @override
  Widget build(BuildContext context) {
    final tabs = {
      'Default': null,
      'Light': GalleryThemeData.lightThemeData,
      'Dark': GalleryThemeData.darkThemeData,
    };
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('ThemeData'),
          bottom: TabBar(
            tabs: tabs.keys.map((e) => Tab(text: e)).toList(),
          ),
        ),
        body: TabBarView(
          children: tabs.values
              .map((e) => e == null
                  ? _ThemeDataList()
                  : Theme(data: e, child: _ThemeDataList()))
              .toList(),
        ),
      ),
    );
  }
}

class _ThemeDataList extends StatelessWidget {
  @override
  Widget build(BuildContext context) => _buildColors(context);

  Widget _buildColors(BuildContext context) {
    final themeData = Theme.of(context);
    final colors = {
      // 'colorScheme': themeData.colorScheme,
      'colorScheme.primary': themeData.colorScheme.primary,
      'colorScheme.primaryVariant': themeData.colorScheme.primaryVariant,
      'colorScheme.secondary': themeData.colorScheme.secondary,
      'colorScheme.secondaryVariant': themeData.colorScheme.secondaryVariant,
      'colorScheme.surface': themeData.colorScheme.surface,
      'colorScheme.background': themeData.colorScheme.background,
      'colorScheme.error': themeData.colorScheme.error,
      'colorScheme.onPrimary': themeData.colorScheme.onPrimary,
      'colorScheme.onSecondary': themeData.colorScheme.onSecondary,
      'colorScheme.onSurface': themeData.colorScheme.onSurface,
      'colorScheme.onBackground': themeData.colorScheme.onBackground,
      'colorScheme.onError': themeData.colorScheme.onError,
      // 'colorScheme.brightness': themeData.colorScheme.brightness,
      // 'visualDensity': themeData.visualDensity,
      'primaryColor': themeData.primaryColor,
      // 'primaryColorBrightness': themeData.primaryColorBrightness,
      'primaryColorLight': themeData.primaryColorLight,
      'primaryColorDark': themeData.primaryColorDark,
      'canvasColor': themeData.canvasColor,
      'shadowColor': themeData.shadowColor,
      'accentColor': themeData.accentColor,
      // 'accentColorBrightness': themeData.accentColorBrightness,
      'scaffoldBackgroundColor': themeData.scaffoldBackgroundColor,
      'bottomAppBarColor': themeData.bottomAppBarColor,
      'cardColor': themeData.cardColor,
      'dividerColor': themeData.dividerColor,
      'focusColor': themeData.focusColor,
      'hoverColor': themeData.hoverColor,
      'highlightColor': themeData.highlightColor,
      'splashColor': themeData.splashColor,
      // 'splashFactory': themeData.splashFactory,
      'selectedRowColor': themeData.selectedRowColor,
      'unselectedWidgetColor': themeData.unselectedWidgetColor,
      'disabledColor': themeData.disabledColor,
      // 'buttonTheme': themeData.buttonTheme,
      'buttonColor': themeData.buttonColor,
      // 'toggleButtonsTheme': themeData.toggleButtonsTheme,
      'secondaryHeaderColor': themeData.secondaryHeaderColor,
      'textSelectionColor': themeData.textSelectionColor,
      'cursorColor': themeData.cursorColor,
      'textSelectionHandleColor': themeData.textSelectionHandleColor,
      'backgroundColor': themeData.backgroundColor,
      'dialogBackgroundColor': themeData.dialogBackgroundColor,
      'indicatorColor': themeData.indicatorColor,
      'hintColor': themeData.hintColor,
      'errorColor': themeData.errorColor,
      'toggleableActiveColor': themeData.toggleableActiveColor,
      // 'textTheme': themeData.textTheme,
      // 'primaryTextTheme': themeData.primaryTextTheme,
      // 'accentTextTheme': themeData.accentTextTheme,
      // 'inputDecorationTheme': themeData.inputDecorationTheme,
      // 'iconTheme': themeData.iconTheme,
      // 'primaryIconTheme': themeData.primaryIconTheme,
      // 'accentIconTheme': themeData.accentIconTheme,
      // 'sliderTheme': themeData.sliderTheme,
      // 'tabBarTheme': themeData.tabBarTheme,
      // 'tooltipTheme': themeData.tooltipTheme,
      // 'cardTheme': themeData.cardTheme,
      // 'chipTheme': themeData.chipTheme,
      // 'platform': themeData.platform,
      // 'materialTapTargetSize': themeData.materialTapTargetSize,
      // 'applyElevationOverlayColor': themeData.applyElevationOverlayColor,
      // 'pageTransitionsTheme': themeData.pageTransitionsTheme,
      // 'appBarTheme': themeData.appBarTheme,
      // 'bottomAppBarTheme': themeData.bottomAppBarTheme,
      // 'dialogTheme': themeData.dialogTheme,
      // 'floatingActionButtonTheme': themeData.floatingActionButtonTheme,
      // 'navigationRailTheme': themeData.navigationRailTheme,
      // 'typography': themeData.typography,
      // 'cupertinoOverrideTheme': themeData.cupertinoOverrideTheme,
      // 'snackBarTheme': themeData.snackBarTheme,
      // 'bottomSheetTheme': themeData.bottomSheetTheme,
      // 'popupMenuTheme': themeData.popupMenuTheme,
      // 'bannerTheme': themeData.bannerTheme,
      // 'dividerTheme': themeData.dividerTheme,
      // 'buttonBarTheme': themeData.buttonBarTheme,
      // 'bottomNavigationBarTheme': themeData.bottomNavigationBarTheme,
      // 'timePickerTheme': themeData.timePickerTheme,
      // 'textButtonTheme': themeData.textButtonTheme,
      // 'elevatedButtonTheme': themeData.elevatedButtonTheme,
      // 'outlinedButtonTheme': themeData.outlinedButtonTheme,
      // 'textSelectionTheme': themeData.textSelectionTheme,
      // 'fixTextFieldOutlineLabel': themeData.fixTextFieldOutlineLabel,
      // 'useTextSelectionTheme': themeData.useTextSelectionTheme,
    };
    final colorKeys = colors.keys.toList();
    return ListView.builder(
      itemCount: colorKeys.length,
      itemBuilder: (context, index) =>
          _buildItem(colorKeys[index], colors[colorKeys[index]]),
    );
  }

  Widget _buildItem(String name, Color color) {
    return DefaultTextStyle.merge(
      style: TextStyle(
          color: color.computeLuminance() > 0.5 ? Colors.black : Colors.white),
      child: Container(
        color: color,
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(name),
            Text('#${color.value.toRadixString(16).padLeft(8, '0')}')
          ],
        ),
      ),
    );
  }
}
