import 'package:go_router/go_router.dart';
import 'package:graduation/core/widgets/custom-tab-bar.dart';
import 'package:graduation/core/widgets/custom_button_nav_bar.dart';
import 'package:graduation/features/EditeProfile/presntation/view/edite-profile.dart';
import 'package:graduation/features/department/presentation/view/department_view.dart';
import 'package:graduation/features/get_started/presntation/view/Get_started4.dart';
import 'package:graduation/features/get_started/presntation/view/get_started.dart';
import 'package:graduation/features/get_started/presntation/view/get_started2.dart';
import 'package:graduation/features/get_started/presntation/view/get_started3.dart';
import 'package:graduation/features/home_view/presentation/view/home_view.dart';
import 'package:graduation/features/login&registerview/presntation/view/as_doctor_or_student.dart';
import 'package:graduation/features/login&registerview/presntation/view/forget_view.dart';
import 'package:graduation/features/login&registerview/presntation/view/login-view.dart';
import 'package:graduation/features/profile_settings/view/profile.dart';
import 'package:graduation/features/sign_up_view/presentation/views/sign_up_view.dart';
import 'package:graduation/features/splash_view/presntation/splash_view.dart';
import 'package:graduation/features/subject_view/presntaion/subject_view.dart';

abstract class AppRoutes {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: '/GetStarted',
        builder: (context, state) => const GetStarted(),
      ),
      GoRoute(
        path: '/GetStarted2',
        builder: (context, state) => const GetStarted2(),
      ),
      GoRoute(
        path: '/GetStarted3',
        builder: (context, state) => const GetStarted3(),
      ),
      GoRoute(
        path: '/signup',
        builder: (context, state) => const SignUp(),
      ),
      GoRoute(
        path: '/department',
        builder: (context, state) => const DepartmentView(),
      ),
      GoRoute(
        path: '/GetStarted4',
        builder: (context, state) => const GetStarted4(),
      ),
      GoRoute(
        path: '/LoginViwe',
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: '/HomeView',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: '/CustomTabBar',
        builder: (context, state) => const CustomTabBar(),
      ),
      GoRoute(
        path: '/ForgetView',
        builder: (context, state) => const ForgetPasswardView(),
      ),
      GoRoute(
        path: '/asDoctorOrStudent',
        builder: (context, state) => const AsDoctorOrStudent(),
      ),
      GoRoute(
        path: '/profileSetting',
        builder: (context, state) => const Profile(),
      ),
      GoRoute(
        path: '/editprofileSetting',
        builder: (context, state) => const EditeProfile(),
      ),
      GoRoute(
        path: '/customnavbar',
        builder: (context, state) => const CustomButonNavBar(),
      ),
      GoRoute(
        path: '/visitSubjects',
        builder: (context, state) => const SubjectView(),
      ),
    ],
  );
}
