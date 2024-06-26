import 'package:task_manager_app/core/servies/prefServies.dart';

import '../constant/constant.dart';
import '../data_source/dio_service.dart';
import '../router/router.dart';
import '../theme/dynamic_theme/app_themes_color.dart';
import 'package:get_it/get_it.dart';


GetIt locator = GetIt.instance;

  Future<void> setupLocator () async {  
  
  locator.registerSingleton<AppRouter>(AppRouter());
  locator.registerSingleton<DioService>(DioService(baseUrl: baseUrl));
  final prefServies =  await PrefServies.initSharedPref();
  locator.registerSingleton<PrefServies>(prefServies);
  locator.registerSingleton<AppThemesColors>(AppThemesColors());
 
  




}



