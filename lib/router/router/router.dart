import 'package:fast_app_base/auth/auth.dart';
import 'package:fast_app_base/basic/app.dart';
import 'package:fast_app_base/common/common/common.dart';
import 'package:fast_app_base/entity/post/simple_product_post.dart';
import 'package:fast_app_base/router/transition/transition.dart';
import 'package:fast_app_base/screen/main/basic/s_main.dart';
import 'package:fast_app_base/screen/main/tab/basic/tab_item.dart';
import 'package:fast_app_base/screen/post_detail/screen/s_post_detail.dart';
import 'package:fast_app_base/screen/write/screen/s_write.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

const ValueKey<String> _scaffoldKey = ValueKey<String>('App scaffold');

final GoRouter router = GoRouter(
  navigatorKey: App.navigatorkey,
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      redirect: (_, __) => '/main',
    ),
    GoRoute(
      path: '/signin',
      pageBuilder: (BuildContext context, GoRouterState state) => FadeTransitionPage(
        key: state.pageKey,
        child: Container(
          color: Colors.green,
          child: Center(
            child: Consumer(
              builder: (context, ref, child) {
                return TextButton(
                  onPressed: () async {
                    await ref.read(bookstoreAuthProvider.notifier).signIn('id', 'pw');
                    // ignore: use_build_context_synchronously
                    context.go('/main/home'); // 직접 이동
                  },
                  child: '로그인'.text.make(),
                );
              },
            ),
          ),
        ),
      ),
    ),
    GoRoute(
      path: '/main',
      redirect: (_, __) => '/main/home',
    ),
    GoRoute(
      path: '/productPost/:postId',
      redirect: (BuildContext context, GoRouterState state) => '/main/home/${state.pathParameters['postId']}',
    ),
    GoRoute(
      path: '/main/:kind(home|localLife|nearMe|chat|my)',
      pageBuilder: (BuildContext context, GoRouterState state) => FadeTransitionPage(
          key: _scaffoldKey,
          child: MainScreen(
            firstTab: TabItem.find(state.pathParameters['kind']),
          )),
      routes: <GoRoute>[
        GoRoute(
          path: ':postId',
          builder: (BuildContext context, GoRouterState state) {
            final String postId = state.pathParameters['postId']!;

            if (state.extra != null) {
              final post = state.extra as SimpleProductPost;

              return PostDetailScreen(
                id: post.id,
                simpleProductPost: post,
              );
            } else {
              return PostDetailScreen(id: int.parse(postId));
            }
          },
        ),
      ],
    ),
    GoRoute(
      name: WriteScreen.routeName,
      path: WriteScreen.routePath,
      builder: (BuildContext context, GoRouterState state) {
        return const WriteScreen();
      },
    ),
  ],
  redirect: (BuildContext context, GoRouterState state) {
    final container = ProviderScope.containerOf(context, listen: false);
    final signedIn = container.read(bookstoreAuthProvider); // bool 값
    return DaangnAuth.guard(signedIn, state);
  },
  debugLogDiagnostics: true,
);
