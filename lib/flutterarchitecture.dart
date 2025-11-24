library;

export 'package:dio/dio.dart';
export 'package:firebase_auth/firebase_auth.dart';
export 'package:flutter/foundation.dart';
export 'package:flutter/material.dart';
///------------------------------------------------------///
/// 📂 [core]
///      📂 [app]
export 'package:flutterarchitecture/core/app/app.dart';
export 'package:flutterarchitecture/core/app/app_assets.dart';
export 'package:flutterarchitecture/core/app/app_colors.dart';
export 'package:flutterarchitecture/core/app/app_initializer.dart';
export 'package:flutterarchitecture/core/app/app_keys.dart';
export 'package:flutterarchitecture/core/app/app_providers.dart';
export 'package:flutterarchitecture/core/app/app_routes.dart';
///     📂 [helper]
export 'package:flutterarchitecture/core/helpers/logger.dart';
export 'package:flutterarchitecture/core/helpers/validators.dart';
///     📂 [network]
export 'package:flutterarchitecture/core/network/api_client.dart';
export 'package:flutterarchitecture/core/network/api_endpoints.dart';
export 'package:flutterarchitecture/core/network/network_exceptions.dart';
///     📂 [services]
export 'package:flutterarchitecture/core/services/api/auth_api_service.dart';
export 'package:flutterarchitecture/core/services/auth/firebase_auth_service.dart';
export 'package:flutterarchitecture/core/services/local/local_storage_service.dart';
///     📂 [theme]
export 'package:flutterarchitecture/core/theme/app_color_scheme.dart';
export 'package:flutterarchitecture/core/theme/app_text_theme_overrides.dart';
export 'package:flutterarchitecture/core/theme/app_theme.dart';
export 'package:flutterarchitecture/core/theme/app_theme_data_overrides.dart';
export 'package:flutterarchitecture/core/theme/create_text_theme.dart';
///     📂 [models]
export 'package:flutterarchitecture/models/user_model.dart';
///
///------------------------------------------------------///
///
/// 📂 [view_models]
///     📂 [app]
export 'package:flutterarchitecture/view_models/app/app_provider.dart';
export 'package:flutterarchitecture/view_models/app/route_navigation_provider.dart';
export 'package:flutterarchitecture/view_models/app/text_theme_provider.dart';
///
export 'package:flutterarchitecture/view_models/app_auth_provider.dart';
export 'package:flutterarchitecture/view_models/home_provider.dart';
///
///------------------------------------------------------///
/// 📂 [views]
///     📂 [auth]
export 'package:flutterarchitecture/views/auth/login_view.dart';
///     📂 [home]
export 'package:flutterarchitecture/views/home/home_screen.dart';
///     📂 [navigation]
export 'package:flutterarchitecture/views/navigation/navigation.dart';
export 'package:flutterarchitecture/views/navigation/navigation_body/home_nav_body.dart';
export 'package:flutterarchitecture/views/navigation/navigation_body/search_nav_body.dart';
///     📂 [settings]
export 'package:flutterarchitecture/views/settings/settings_screen.dart';
///     📂 [splash]
export 'package:flutterarchitecture/views/splash/splash_screen.dart';
///
///------------------------------------------------------///
/// 📂 [widgets]
///     📂 [splash]
export 'package:flutterarchitecture/widgets/other_widgets/counter_display.dart';
///
///
/// 📂 [pub.dev]
///------------------------------------------------------///
export 'package:google_fonts/google_fonts.dart';
export 'package:provider/provider.dart';
export 'package:shared_preferences/shared_preferences.dart';
