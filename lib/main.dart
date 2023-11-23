import 'package:expensetracker/app.dart';
import 'package:expensetracker/helpers/db.helper.dart';
import 'package:expensetracker/providers/app_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await getDBInstance();

  AppProvider appProvider = await AppProvider.getInstance();

  runApp(
      MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_)=>appProvider)
          ],
          child: const App()
      )
  );
}


