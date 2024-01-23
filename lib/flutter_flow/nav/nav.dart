import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import '/backend/schema/structs/index.dart';

import '/backend/supabase/supabase.dart';
import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => RootPageContext.wrap(
        appStateNotifier.loggedIn ? E01MenuWidget() : AuthloginWidget(),
        errorRoute: state.location,
      ),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => RootPageContext.wrap(
            appStateNotifier.loggedIn ? E01MenuWidget() : AuthloginWidget(),
          ),
          routes: [
            FFRoute(
              name: 'Cliente1',
              path: 'cliente1',
              builder: (context, params) => Cliente1Widget(
                restauranteID: params.getParam('restauranteID', ParamType.int),
                mesa: params.getParam('mesa', ParamType.String),
                user: params.getParam('user', ParamType.int),
              ),
            ),
            FFRoute(
              name: 'Cliente4',
              path: 'cliente4',
              builder: (context, params) => Cliente4Widget(
                valorCarrinho:
                    params.getParam('valorCarrinho', ParamType.double),
                mesa: params.getParam('mesa', ParamType.String),
                restaurante: params.getParam<EstabelecimentoRow>(
                    'restaurante', ParamType.SupabaseRow),
                pedido: params.getParam<PedidosRow>(
                    'pedido', ParamType.SupabaseRow),
              ),
            ),
            FFRoute(
              name: 'Cliente5',
              path: 'cliente5',
              builder: (context, params) => Cliente5Widget(
                mesa: params.getParam('mesa', ParamType.String),
                valorCarrinho:
                    params.getParam('valorCarrinho', ParamType.double),
                restaurante: params.getParam<EstabelecimentoRow>(
                    'restaurante', ParamType.SupabaseRow),
                pedidoID: params.getParam<PedidosRow>(
                    'pedidoID', ParamType.SupabaseRow),
              ),
            ),
            FFRoute(
              name: 'Authlogin',
              path: 'auth',
              builder: (context, params) => AuthloginWidget(),
            ),
            FFRoute(
              name: 'E02Estabelecimento',
              path: 'e02Estabelecimento',
              builder: (context, params) => E02EstabelecimentoWidget(
                estabelecimentoID:
                    params.getParam('estabelecimentoID', ParamType.int),
              ),
            ),
            FFRoute(
              name: 'E01Menu',
              path: 'menu',
              builder: (context, params) => E01MenuWidget(),
            ),
            FFRoute(
              name: 'sisfinanceiro',
              path: 'financeiro',
              builder: (context, params) => SisfinanceiroWidget(),
            ),
            FFRoute(
              name: 'SISinanceiroedisedit',
              path: 'sISinanceiroedisedit',
              builder: (context, params) => SISinanceiroediseditWidget(
                restauranteID:
                    params.getParam('restauranteID', ParamType.String),
                financeiro: params.getParam<AssinaturasRow>(
                    'financeiro', ParamType.SupabaseRow),
              ),
            ),
            FFRoute(
              name: 'Financeiro03',
              path: 'financeiro03',
              builder: (context, params) => Financeiro03Widget(),
            ),
            FFRoute(
              name: 'Cozinha',
              path: 'cozinha',
              builder: (context, params) => CozinhaWidget(
                restaurante: params.getParam<EstabelecimentoRow>(
                    'restaurante', ParamType.SupabaseRow),
              ),
            ),
            FFRoute(
              name: 'Clienteob3',
              path: 'clienteob3',
              builder: (context, params) => Clienteob3Widget(),
            ),
            FFRoute(
              name: 'entregador1',
              path: 'entregador1',
              builder: (context, params) => Entregador1Widget(),
            ),
            FFRoute(
              name: 'gacom',
              path: 'gacom',
              builder: (context, params) => GacomWidget(
                restaurante: params.getParam<EstabelecimentoRow>(
                    'restaurante', ParamType.SupabaseRow),
              ),
            ),
            FFRoute(
              name: 'garcom2',
              path: 'garcom2',
              builder: (context, params) => Garcom2Widget(),
            ),
            FFRoute(
              name: 'E01Opcoes-edit',
              path: 'options',
              builder: (context, params) => E01OpcoesEditWidget(
                refprato: params.getParam<PratosRow>(
                    'refprato', ParamType.SupabaseRow),
                restaurate: params.getParam<EstabelecimentoRow>(
                    'restaurate', ParamType.SupabaseRow),
              ),
            ),
            FFRoute(
              name: 'pedidos',
              path: 'pedidos',
              builder: (context, params) => PedidosWidget(
                restaurante: params.getParam<EstabelecimentoRow>(
                    'restaurante', ParamType.SupabaseRow),
              ),
            ),
            FFRoute(
              name: 'pedido03',
              path: 'pedido03',
              builder: (context, params) => Pedido03Widget(
                restaurante: params.getParam<EstabelecimentoRow>(
                    'restaurante', ParamType.SupabaseRow),
              ),
            ),
            FFRoute(
              name: 'relatorio01',
              path: 'relatorio01',
              requireAuth: true,
              builder: (context, params) => Relatorio01Widget(
                restaurante: params.getParam<EstabelecimentoRow>(
                    'restaurante', ParamType.SupabaseRow),
              ),
            ),
            FFRoute(
              name: 'E01user01',
              path: 'e01user01',
              builder: (context, params) => E01user01Widget(),
            ),
            FFRoute(
              name: 'mensagem01',
              path: 'mensagem01',
              builder: (context, params) => Mensagem01Widget(),
            ),
            FFRoute(
              name: 'E01Mesas',
              path: 'e01Mesas',
              builder: (context, params) => E01MesasWidget(
                mesas:
                    params.getParam<MesasRow>('mesas', ParamType.SupabaseRow),
                restaurante: params.getParam<EstabelecimentoRow>(
                    'restaurante', ParamType.SupabaseRow),
              ),
            ),
            FFRoute(
              name: 'useroEdit',
              path: 'pedEdit2',
              builder: (context, params) => UseroEditWidget(
                userID: params.getParam<UsuariosRow>(
                    'userID', ParamType.SupabaseRow),
              ),
            ),
            FFRoute(
              name: 'Cliente2',
              path: 'cliente2',
              builder: (context, params) => Cliente2Widget(
                mesa: params.getParam('mesa', ParamType.String),
                restaurante: params.getParam('restaurante', ParamType.int),
                pedido: params.getParam<PedidosRow>(
                    'pedido', ParamType.SupabaseRow),
              ),
            ),
            FFRoute(
              name: 'Cliente3',
              path: 'cliente3',
              builder: (context, params) => Cliente3Widget(
                mesa: params.getParam('mesa', ParamType.String),
                categoria: params.getParam<CategoriaRow>(
                    'categoria', ParamType.SupabaseRow),
                restaurante: params.getParam<EstabelecimentoRow>(
                    'restaurante', ParamType.SupabaseRow),
                pedido: params.getParam<PedidosRow>(
                    'pedido', ParamType.SupabaseRow),
              ),
            ),
            FFRoute(
              name: 'AuthCreat',
              path: 'authCreat',
              builder: (context, params) => AuthCreatWidget(),
            ),
            FFRoute(
              name: 'E02Estabelecimentotrue',
              path: 'e02Estabelecimentotrue',
              builder: (context, params) => E02EstabelecimentotrueWidget(
                estabelecimentoID:
                    params.getParam('estabelecimentoID', ParamType.int),
              ),
            ),
            FFRoute(
              name: 'Cliente3pizzas2',
              path: 'cliente3pizzas2',
              builder: (context, params) => Cliente3pizzas2Widget(
                mesa: params.getParam('mesa', ParamType.String),
                categoria: params.getParam<CategoriaRow>(
                    'categoria', ParamType.SupabaseRow),
                restaurante: params.getParam<EstabelecimentoRow>(
                    'restaurante', ParamType.SupabaseRow),
                pedido: params.getParam<PedidosRow>(
                    'pedido', ParamType.SupabaseRow),
                itempedido: params.getParam<ItensDoPedidoRow>(
                    'itempedido', ParamType.SupabaseRow),
                sabores: params.getParam('sabores', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'Cliente3pizzas3',
              path: 'cliente3pizzas3',
              builder: (context, params) => Cliente3pizzas3Widget(
                mesa: params.getParam('mesa', ParamType.String),
                categoria: params.getParam<CategoriaRow>(
                    'categoria', ParamType.SupabaseRow),
                restaurante: params.getParam<EstabelecimentoRow>(
                    'restaurante', ParamType.SupabaseRow),
                pedido: params.getParam<PedidosRow>(
                    'pedido', ParamType.SupabaseRow),
                itempedido: params.getParam<ItensDoPedidoRow>(
                    'itempedido', ParamType.SupabaseRow),
                sabores: params.getParam('sabores', ParamType.int),
              ),
            ),
            FFRoute(
              name: 'Cliente3pizzas21',
              path: 'cliente3pizzas21',
              builder: (context, params) => Cliente3pizzas21Widget(
                mesa: params.getParam('mesa', ParamType.String),
                categoria: params.getParam<CategoriaRow>(
                    'categoria', ParamType.SupabaseRow),
                restaurante: params.getParam<EstabelecimentoRow>(
                    'restaurante', ParamType.SupabaseRow),
                pedido: params.getParam<PedidosRow>(
                    'pedido', ParamType.SupabaseRow),
                itempedido: params.getParam<ItensDoPedidoRow>(
                    'itempedido', ParamType.SupabaseRow),
                sabores: params.getParam('sabores', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'E01Opcoe',
              path: 'options-edit',
              builder: (context, params) => E01OpcoeWidget(
                restaurante: params.getParam<EstabelecimentoRow>(
                    'restaurante', ParamType.SupabaseRow),
              ),
            ),
            FFRoute(
              name: 'SisMenu',
              path: 'menusis',
              builder: (context, params) => SisMenuWidget(),
            ),
            FFRoute(
              name: 'sisestabelecimento',
              path: 'sisestabelecimento',
              builder: (context, params) => SisestabelecimentoWidget(
                estabelecimentoID:
                    params.getParam('estabelecimentoID', ParamType.int),
              ),
            ),
            FFRoute(
              name: 'sisestabelecimentotrue',
              path: 'sisestabelecimentotrue',
              builder: (context, params) => SisestabelecimentotrueWidget(
                estabelecimentoID:
                    params.getParam('estabelecimentoID', ParamType.int),
              ),
            ),
            FFRoute(
              name: 'sislista',
              path: 'sislista',
              builder: (context, params) => SislistaWidget(),
            ),
            FFRoute(
              name: 'sisuser',
              path: 'usersis',
              builder: (context, params) => SisuserWidget(
                resraurante: params.getParam<EstabelecimentoRow>(
                    'resraurante', ParamType.SupabaseRow),
              ),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ),
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/auth';
          }
          return null;
        },
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouter.of(context).location;
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}
