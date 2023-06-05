import 'package:dio/dio.dart';
import 'package:fimber/fimber.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:hypha_wallet/core/crypto/seeds_esr/scan_qr_code_result_data.dart';
import 'package:hypha_wallet/core/error_handler/error_handler_manager.dart';
import 'package:hypha_wallet/core/firebase/firebase_analytics_service.dart';
import 'package:hypha_wallet/core/firebase/firebase_database_service.dart';
import 'package:hypha_wallet/core/firebase/firebase_push_notifications_service.dart';
import 'package:hypha_wallet/core/local/services/crypto_auth_service.dart';
import 'package:hypha_wallet/core/local/services/permission_service.dart';
import 'package:hypha_wallet/core/local/services/permission_service_implementation.dart';
import 'package:hypha_wallet/core/local/services/secure_storage_service.dart';
import 'package:hypha_wallet/core/logging/firebase_crash_reporting_tree.dart';
import 'package:hypha_wallet/core/network/api/aws_amplify/amplify_service.dart';
import 'package:hypha_wallet/core/network/api/aws_amplify/profile_upload_repository.dart';
import 'package:hypha_wallet/core/network/api/eos_service.dart';
import 'package:hypha_wallet/core/network/api/hypha_member_service.dart';
import 'package:hypha_wallet/core/network/api/remote_config_service.dart';
import 'package:hypha_wallet/core/network/api/sign_transaction_callback_service.dart';
import 'package:hypha_wallet/core/network/api/token_service.dart';
import 'package:hypha_wallet/core/network/api/transaction_history_service.dart';
import 'package:hypha_wallet/core/network/api/user_account_service.dart';
import 'package:hypha_wallet/core/network/networking_manager.dart';
import 'package:hypha_wallet/core/network/repository/auth_repository.dart';
import 'package:hypha_wallet/core/network/repository/profile_repository.dart';
import 'package:hypha_wallet/core/network/repository/transaction_history_repository.dart';
import 'package:hypha_wallet/core/network/repository/user_account_repository.dart';
import 'package:hypha_wallet/core/shared_preferences/hypha_shared_prefs.dart';
import 'package:hypha_wallet/firebase_options.dart';
import 'package:hypha_wallet/ui/blocs/authentication/authentication_bloc.dart';
import 'package:hypha_wallet/ui/blocs/deeplink/deeplink_bloc.dart';
import 'package:hypha_wallet/ui/blocs/error_handler/error_handler_bloc.dart';
import 'package:hypha_wallet/ui/blocs/push_notifications/push_notifications_bloc.dart';
import 'package:hypha_wallet/ui/bottom_navigation/interactor/bottom_navigation_bloc.dart';
import 'package:hypha_wallet/ui/history/details/interactor/transaction_detail_bloc.dart';
import 'package:hypha_wallet/ui/history/transactions/interactor/transactions_bloc.dart';
import 'package:hypha_wallet/ui/history/transactions/usecases/get_transaction_history_use_case.dart';
import 'package:hypha_wallet/ui/home_page/interactor/home_bloc.dart';
import 'package:hypha_wallet/ui/home_page/usecases/parse_qr_code_use_case.dart';
import 'package:hypha_wallet/ui/onboarding/create_account/interactor/create_account_bloc.dart';
import 'package:hypha_wallet/ui/onboarding/edit_account/edit_account_page.dart';
import 'package:hypha_wallet/ui/onboarding/edit_account/interactor/edit_account_bloc.dart';
import 'package:hypha_wallet/ui/onboarding/import_account/interactor/import_account_bloc.dart';
import 'package:hypha_wallet/ui/onboarding/import_account/usecases/find_account_use_case.dart';
import 'package:hypha_wallet/ui/onboarding/import_account/usecases/generate_key_from_recovery_words_use_case.dart';
import 'package:hypha_wallet/ui/onboarding/import_account/usecases/generate_key_from_seeds_passport_words_use_case.dart';
import 'package:hypha_wallet/ui/onboarding/import_account/usecases/validate_key_use_case.dart';
import 'package:hypha_wallet/ui/onboarding/usecases/check_account_availability_use_case.dart';
import 'package:hypha_wallet/ui/onboarding/usecases/create_account_use_case.dart';
import 'package:hypha_wallet/ui/onboarding/usecases/find_available_account_use_case.dart';
import 'package:hypha_wallet/ui/profile/interactor/profile_bloc.dart';
import 'package:hypha_wallet/ui/profile/usecases/fetch_profile_use_case.dart';
import 'package:hypha_wallet/ui/profile/usecases/initialize_profile_use_case.dart';
import 'package:hypha_wallet/ui/profile/usecases/ppp_sign_up_use_case.dart';
import 'package:hypha_wallet/ui/profile/usecases/profile_login_use_case.dart';
import 'package:hypha_wallet/ui/profile/usecases/remove_avatar_use_case.dart';
import 'package:hypha_wallet/ui/profile/usecases/set_bio_use_case.dart';
import 'package:hypha_wallet/ui/profile/usecases/set_image_use_case.dart';
import 'package:hypha_wallet/ui/profile/usecases/set_name_use_case.dart';
import 'package:hypha_wallet/ui/settings/interactor/settings_bloc.dart';
import 'package:hypha_wallet/ui/settings/usecases/delete_account_use_case.dart';
import 'package:hypha_wallet/ui/sign_transaction/interactor/sign_transaction_bloc.dart';
import 'package:hypha_wallet/ui/sign_transaction/usecases/sign_transaction_use_case.dart';
import 'package:hypha_wallet/ui/token_settings/interactor/token_settings_bloc.dart';
import 'package:hypha_wallet/ui/token_settings/usecases/add_token_to_user_use_case.dart';
import 'package:hypha_wallet/ui/token_settings/usecases/get_all_tokens_use_case.dart';
import 'package:hypha_wallet/ui/token_settings/usecases/remove_token_from_user_use_case.dart';
import 'package:hypha_wallet/ui/wallet/interactor/wallet_bloc.dart';
import 'package:hypha_wallet/ui/wallet/usecases/get_user_tokens_use_case.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rx_shared_preferences/rx_shared_preferences.dart';

part 'api_module.dart';
part 'bloc_module.dart';
part 'firebase_module.dart';
part 'log_module.dart';
part 'managers_module.dart';
part 'repositories_module.dart';
part 'services_module.dart';
part 'shared_preferences_module.dart';
part 'usecases_module.dart';

final _getIt = GetIt.I;

// Get It Library wrappers
// void _registerSingleton<T extends Object>(T dependency) => _getIt.registerSingleton<T>(dependency);

void _registerLazySingleton<T extends Object>(FactoryFunc<T> factoryFunc) =>
    _getIt.registerLazySingleton<T>(factoryFunc);

void _registerFactory<T extends Object>(FactoryFunc<T> factoryFunc) => _getIt.registerFactory<T>(factoryFunc);

/// Register factory with initial parameters
void _registerFactoryWithParams<T extends Object, P1, P2>(FactoryFuncParam<T, P1, P2> factoryFunc) =>
    _getIt.registerFactoryParam<T, P1, P2>(factoryFunc);

/// The order matters when initializing the dependencies!
Future<void> setupDependencies() async {
  // Initialize Logging Configuration
  _initializeLogSystem();

  // Firebase Services (Storage, Auth, etc)
  await _registerFirebaseModule();

  // Shared Preferences
  await _registerSharedPreferencesModule();

  // Core Dependencies
  await _registerServicesModule();

  // API Services Dependencies
  _registerApiModule();

  // Repositories Dependencies
  _registerRepositoriesModule();

  // Managers Dependencies
  _registerManagersModule();

  // Blocs
  _registerBlocsModule();

  // Use Cases
  _registerUseCasesModule();
}
