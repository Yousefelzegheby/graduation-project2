import 'package:go_router/go_router.dart';
import 'package:graduation/core/utiles/path.dart';
import 'package:graduation/core/widgets/custom_button_nav_bar.dart';
import 'package:graduation/features/EditeProfile/presntation/view/edite-profile.dart';
import 'package:graduation/features/chat/presentaion/chat_view.dart';
import 'package:graduation/features/department/presentation/view/department_view.dart';
import 'package:graduation/features/get_started/presntation/view/Get_started4.dart';
import 'package:graduation/features/get_started/presntation/view/get_started.dart';
import 'package:graduation/features/get_started/presntation/view/get_started2.dart';
import 'package:graduation/features/get_started/presntation/view/get_started3.dart';
import 'package:graduation/features/gpa_page/presentation/gpa_page.dart';
import 'package:graduation/features/home_view/presentation/view/home_view.dart';
import 'package:graduation/features/lec_table_view/presentaions/lec_table_view.dart';
import 'package:graduation/features/login&registerview/presntation/view/as_doctor_or_student.dart';
import 'package:graduation/features/login&registerview/presntation/view/forget_view.dart';
import 'package:graduation/features/login&registerview/presntation/view/login-view.dart';
import 'package:graduation/features/massege&notification/presentation/views/massege_notification.dart';
import 'package:graduation/features/profile_settings/view/profile.dart';
import 'package:graduation/features/search/view/search.dart';
import 'package:graduation/features/sign_up_view/presentation/views/enterg_grade_view.dart';
import 'package:graduation/features/sign_up_view/presentation/views/sign_up2_view.dart';
import 'package:graduation/features/sign_up_view/presentation/views/sign_up_view.dart';
import 'package:graduation/features/sign_up_view/presentation/views/signup_view3.dart';
import 'package:graduation/features/splash_view/presntation/splash_view.dart';
import 'package:graduation/features/subject_view/presntaion/courses_view.dart';
import 'package:graduation/features/suggest_view/presentation/view/edit/edit_view.dart';
import 'package:graduation/features/suggest_view/presentation/view/edit/widget/edit_suggest_body.dart';
import 'package:graduation/features/suggest_view/presentation/view/suggest_view.dart';

import '../../features/material_view/presentaion/material_course_view.dart';
import '../../features/material_view/presentaion/material_view.dart';
import '../../features/material_view/presentaion/materil_course_lecture_view.dart';

abstract class AppRoutes {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: AssetsPath.getStarted,
        builder: (context, state) => const GetStarted(),
      ),
      GoRoute(
        path: AssetsPath.getStarted2,
        builder: (context, state) => const GetStarted2(),
      ),
      GoRoute(
        path: AssetsPath.getStarted3,
        builder: (context, state) => const GetStarted3(),
      ),
      GoRoute(
        path: '/signup',
        builder: (context, state) => const SignUp(),
      ),
      GoRoute(
        path: '/signup2',
        builder: (context, state) => const SignUp2View(),
      ),
      GoRoute(
        path: '/signup3',
        builder: (context, state) => const SignUpView3(),
      ),
      GoRoute(
        path: '/enterGrade',
        builder: (context, state) => const EnterGrade(),
      ),
      GoRoute(
        path: '/department',
        builder: (context, state) => const DepartmentView(),
      ),
      GoRoute(
        path: AssetsPath.getStarted4,
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
      GoRoute(
        path: '/lectableview',
        builder: (context, state) => const LecTableView(),
      ),
      GoRoute(
        path: '/materialview',
        builder: (context, state) => const MaterialView(),
      ),
      GoRoute(
        path: '/chatview',
        builder: (context, state) => const ChatBoot(),
      ),
      GoRoute(
        path: '/materialCourseView',
        builder: (context, state) => const MaterialCourseView(),
      ),
      GoRoute(
        path: '/materilcourselectures',
        builder: (context, state) => const MaterilCoureseLecturesView(),
      ),
      GoRoute(
        path: '/searchview',
        builder: (context, state) => const Searchview(),
      ),
      GoRoute(
        path: '/suggestView',
        builder: (context, state) => const SuggestView(),
      ),
      GoRoute(
        path: '/editsugest',
        builder: (context, state) => const EditView(),
      ),
      GoRoute(
        path: '/gpa',
        builder: (context, state) => const GpaPage(),
      ),
    ],
  );
}
