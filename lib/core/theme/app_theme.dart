import "../../src.dart";

abstract class AppTheme {
  static ThemeData light = ThemeData(
    extensions: [AppThemeColors.light(), AppThemeSvgs.light()],
    // Ilovaning asosiy rangi (brand color)
    primaryColor: Colors.blue,

    // Asosiy rangning ochroq varianti (light variant)
    primaryColorLight: Colors.blue.shade200,

    // Asosiy rangning to‘qroq varianti (dark variant)
    primaryColorDark: Colors.blue.shade900,

    // Material yuzalarining fon rangi
    canvasColor: Colors.grey.shade50,

    // Butun ekranning orqa fon rangi (Scaffold uchun)
    scaffoldBackgroundColor: Colors.white,

    // Cardlar orqa fon rangi
    cardColor: Colors.white,

    // Divider (chiziq) rangi
    dividerColor: Colors.grey,

    // InkWell bosilganda yaltirab ko‘rinadigan rang
    highlightColor: Colors.transparent, // odatda transparent qo‘yiladi
    // "Splash" effektda ko‘rinadigan tomchi rang
    splashColor: Colors.blue.withOpacity(0.3),

    // Disable bo‘lgan (o‘chirilgan) widget rangi
    disabledColor: Colors.grey.shade400,

    // Masalan TextField hint ranglari uchun
    hintColor: Colors.grey,

    // Fokus holatidagi rang
    focusColor: Colors.blue.shade100,

    // Web/Desktop’da hover effekti
    hoverColor: Colors.blue.shade50,

    // Shadow (soyalar) rangi
    shadowColor: Colors.black.withOpacity(0.25),

    // --- TEXTLAR UCHUN ---
    fontFamily: 'Montserrat', // umumiy shrift
    fontFamilyFallback: ['Roboto', 'Arial'],

    textTheme: TextTheme(
      bodyLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
      bodyMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
      bodySmall: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
      titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      titleMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
      labelLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
    ),

    // AppBar ichidagi textlar uchun primary text theme
    primaryTextTheme: TextTheme(
      titleLarge: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),

    typography:
        Typography.material2021(), // platformaga mos typografiya qoidalari
    // --- ICONLAR UCHUN ---
    iconTheme: IconThemeData(size: 24, opacity: 1.0),
    primaryIconTheme: IconThemeData(color: Colors.white, size: 26),

    // --- TEXT FIELD & INPUT UCHUN ---
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(),
      focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 2)),
      hintStyle: TextStyle(color: Colors.grey),
    ),

    // Matnni select qilganda highlight bo'ladigan ranglar
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: Colors.blue,
      selectionHandleColor: Colors.blue,
      selectionColor: Colors.blue.withOpacity(0.3),
    ),

    // Tooltip (ustiga olib borganda chiqadigan matnlar)
    tooltipTheme: TooltipThemeData(
      decoration: BoxDecoration(color: Colors.black87),
      textStyle: TextStyle(color: Colors.white),
    ),

    // SnackBar uchun default style
    snackBarTheme: SnackBarThemeData(
      behavior: SnackBarBehavior.floating,
      contentTextStyle: TextStyle(color: Colors.white),
    ),

    // AppBar styling
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.blue,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    // --- ELEVATED BUTTON ---
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),
    ),

    // --- TEXT BUTTON ---
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(textStyle: TextStyle(fontSize: 15)),
    ),

    // --- OUTLINED BUTTON ---
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        side: BorderSide(width: 1.5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),

    // --- FLOATING ACTION BUTTON ---
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      elevation: 4,
      shape: CircleBorder(),
    ),

    // --- CHECKBOX ---
    checkboxTheme: CheckboxThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    ),

    // --- SWITCH ---
    switchTheme: SwitchThemeData(
      thumbIcon: MaterialStateProperty.all(Icon(Icons.circle)),
    ),

    // --- SLIDER ---
    sliderTheme: SliderThemeData(
      trackHeight: 4,
      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10),
    ),

    // --- TABBAR ---
    tabBarTheme: TabBarThemeData(
      labelStyle: TextStyle(fontWeight: FontWeight.bold),
      unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w400),
      indicatorSize: TabBarIndicatorSize.tab,
    ),

    // --- BOTTOM NAV BAR ---
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      elevation: 8,
    ),

    // --- DIALOG ---
    dialogTheme: DialogThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    ),
    // --- APPBAR ---

    // --- BOTTOM SHEET ---
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
    ),

    // --- POPUP MENU (uch nuqtalik menyu) ---
    popupMenuTheme: PopupMenuThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),

    // --- DRAWER ---
    drawerTheme: DrawerThemeData(backgroundColor: Colors.white, elevation: 4),

    // --- LIST TILE ---
    listTileTheme: ListTileThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    ),

    // --- EXPANSION TILE ---
    expansionTileTheme: ExpansionTileThemeData(
      iconColor: Colors.blue,
      collapsedIconColor: Colors.grey,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),

    // --- DIVIDER ---
    dividerTheme: DividerThemeData(thickness: 1, space: 16),

    // --- SCROLLBAR ---
    scrollbarTheme: ScrollbarThemeData(
      radius: Radius.circular(8),
      thickness: MaterialStateProperty.all(6),
    ),

    // --- TOOLTIP ---

    // --- CARD ---
    cardTheme: CardThemeData(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: EdgeInsets.all(8),
    ),

    // --- MENU (Material3) ---
    menuTheme: MenuThemeData(
      style: MenuStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
    ),

    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blue, // faqat bitta seed → butun UI ranglanadi
      brightness: Brightness.light,
    ),
    useMaterial3: true,

    // --- BOSISH HUDUDI VA YOPIQLIK ---
    materialTapTargetSize:
        MaterialTapTargetSize.shrinkWrap, // kichikroq touch area

    visualDensity: VisualDensity.compact, // widgetlar zichroq joylashadi
    // --- ICON, BUTTON BOSGANDAGI EFFEKT ---
    splashFactory: InkSplash.splashFactory, // default ink splash
    // splashFactory: NoSplash.splashFactory, // NO splash holat (clean UI uchun)

    // --- PAGE ANIMATSIYALAR ---
    pageTransitionsTheme: PageTransitionsTheme(
      builders: {
        TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    ),

    // --- SCROLL BEHAVIOR ---
    platform: TargetPlatform.iOS,
    applyElevationOverlayColor: true,
  );
}
