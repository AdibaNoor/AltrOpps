import 'package:provider/provider.dart';
import 'package:theme_example/provider/theme_provider.dart';

class ChangeThemeButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Swwitch.adaptive(
      value:themeProvider.isDarkMode,
      onChanged: (value)  {
        final provider = Provider.of<ThemeProvider>(context, listen: false);
        provider.toggleTheme(value);
      },
    );
  }
}