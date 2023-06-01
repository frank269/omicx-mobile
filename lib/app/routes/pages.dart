import 'package:get/get.dart';
import '../modules/bindings.dart';
import '../modules/views.dart';
part './routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.INITIAL,
      page: () => SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.ONBOARDING,
      page: () => OnBoardingScreen(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginScreen(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.REGISTER,
      page: () => RegisterScreen(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: Routes.FORGOT_PASSWORD,
      page: () => ForgotPasswordScreen(),
      binding: ForgotPasswordBinding(),
    ),
    GetPage(
      name: Routes.OTP,
      page: () => OtpScreen(),
      binding: OtpBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.DIALPAD,
      page: () => DialpadScreen(),
      binding: DialpadBinding(),
    ),
    GetPage(
      name: Routes.TICKET_DETAIL,
      page: () => TicketDetailScreen(),
      binding: TicketDetailBinding(),
    ),
    GetPage(
      name: Routes.TICKET_ADD,
      page: () => TicketAddScreen(),
      binding: TicketAddBinding(),
    ),
    GetPage(
      name: Routes.TICKET_EDIT,
      page: () => TicketEditScreen(),
      binding: TicketEditBinding(),
    ),
    GetPage(
      name: Routes.CONTACT_DETAIL,
      page: () => ContactDetailScreen(),
      binding: ContactDetailBinding(),
    ),
    GetPage(
      name: Routes.CONTACT_ADD,
      page: () => ContactAddScreen(),
      binding: ContactAddBinding(),
    ),
    GetPage(
      name: Routes.CONTACT_EDIT,
      page: () => ContactEditScreen(),
      binding: ContactEditBinding(),
    ),
    GetPage(
      name: Routes.CALL_HISTORY_DETAIL,
      page: () => CallHistoryDetailScreen(),
      binding: CallHistoryDetailBinding(),
    ),
  ];
}
