import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Supabase Group Code

class SupabaseGroup {
  static String baseUrl = 'https://gfdayfgkfwrpywsuhvyr.supabase.co/rest/v1/';
  static Map<String, String> headers = {
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdmZGF5ZmdrZndycHl3c3VodnlyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDM3NzkyMDIsImV4cCI6MjAxOTM1NTIwMn0.mYAmz9YILT_JObC7RBbg8hDM2e784ro9NxtN_PWmp00',
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdmZGF5ZmdrZndycHl3c3VodnlyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDM3NzkyMDIsImV4cCI6MjAxOTM1NTIwMn0.mYAmz9YILT_JObC7RBbg8hDM2e784ro9NxtN_PWmp00',
  };
  static BuscarUsuarioCall buscarUsuarioCall = BuscarUsuarioCall();
  static BuscarUsuarioPorIDCall buscarUsuarioPorIDCall =
      BuscarUsuarioPorIDCall();
  static BuscarUsuarioPorEmailCall buscarUsuarioPorEmailCall =
      BuscarUsuarioPorEmailCall();
  static BuscarPedidoPorRestauranteCall buscarPedidoPorRestauranteCall =
      BuscarPedidoPorRestauranteCall();
  static BuscarRestaurantePorUserIDCall buscarRestaurantePorUserIDCall =
      BuscarRestaurantePorUserIDCall();
}

class BuscarUsuarioCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Buscar Usuario',
      apiUrl: '${SupabaseGroup.baseUrl}usuarios?select=*',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdmZGF5ZmdrZndycHl3c3VodnlyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDM3NzkyMDIsImV4cCI6MjAxOTM1NTIwMn0.mYAmz9YILT_JObC7RBbg8hDM2e784ro9NxtN_PWmp00',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdmZGF5ZmdrZndycHl3c3VodnlyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDM3NzkyMDIsImV4cCI6MjAxOTM1NTIwMn0.mYAmz9YILT_JObC7RBbg8hDM2e784ro9NxtN_PWmp00',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class BuscarUsuarioPorIDCall {
  Future<ApiCallResponse> call({
    String? uid = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Buscar Usuario por ID',
      apiUrl: '${SupabaseGroup.baseUrl}usuarios?uid=eq.${uid}&select=*',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdmZGF5ZmdrZndycHl3c3VodnlyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDM3NzkyMDIsImV4cCI6MjAxOTM1NTIwMn0.mYAmz9YILT_JObC7RBbg8hDM2e784ro9NxtN_PWmp00',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdmZGF5ZmdrZndycHl3c3VodnlyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDM3NzkyMDIsImV4cCI6MjAxOTM1NTIwMn0.mYAmz9YILT_JObC7RBbg8hDM2e784ro9NxtN_PWmp00',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  String? uid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].uid''',
      ));
  String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nome''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].email''',
      ));
  int? restauranteID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].restaurante_id''',
      ));
  String? tipo(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].tipo''',
      ));
  bool? cadEstabelecimento(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].cadEstabelecimento''',
      ));
  String? locationUser(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].location''',
      ));
}

class BuscarUsuarioPorEmailCall {
  Future<ApiCallResponse> call({
    String? email = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Buscar Usuario por email',
      apiUrl: '${SupabaseGroup.baseUrl}usuarios?email=eq.${email}&select=*',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdmZGF5ZmdrZndycHl3c3VodnlyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDM3NzkyMDIsImV4cCI6MjAxOTM1NTIwMn0.mYAmz9YILT_JObC7RBbg8hDM2e784ro9NxtN_PWmp00',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdmZGF5ZmdrZndycHl3c3VodnlyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDM3NzkyMDIsImV4cCI6MjAxOTM1NTIwMn0.mYAmz9YILT_JObC7RBbg8hDM2e784ro9NxtN_PWmp00',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  String? uid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].uid''',
      ));
  String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nome''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].email''',
      ));
  int? restauranteID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].restaurante_id''',
      ));
  String? tipo(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].tipo''',
      ));
  bool? cadEstabelecimento(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].cadEstabelecimento''',
      ));
}

class BuscarPedidoPorRestauranteCall {
  Future<ApiCallResponse> call({
    int? restauranteId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Buscar Pedido por restaurante',
      apiUrl:
          '${SupabaseGroup.baseUrl}Pedidos?restaurante_id=eq.${restauranteId}&select=*',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdmZGF5ZmdrZndycHl3c3VodnlyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDM3NzkyMDIsImV4cCI6MjAxOTM1NTIwMn0.mYAmz9YILT_JObC7RBbg8hDM2e784ro9NxtN_PWmp00',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdmZGF5ZmdrZndycHl3c3VodnlyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDM3NzkyMDIsImV4cCI6MjAxOTM1NTIwMn0.mYAmz9YILT_JObC7RBbg8hDM2e784ro9NxtN_PWmp00',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  int? restauranteID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].restaurante_id''',
      ));
  List<String>? mesa(dynamic response) => (getJsonField(
        response,
        r'''$[:].mesa''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? status(dynamic response) => (getJsonField(
        response,
        r'''$[:].status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class BuscarRestaurantePorUserIDCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Buscar Restaurante por userID',
      apiUrl: '${SupabaseGroup.baseUrl}Estabelecimento?id=eq.${id}&select=*',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdmZGF5ZmdrZndycHl3c3VodnlyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDM3NzkyMDIsImV4cCI6MjAxOTM1NTIwMn0.mYAmz9YILT_JObC7RBbg8hDM2e784ro9NxtN_PWmp00',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdmZGF5ZmdrZndycHl3c3VodnlyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDM3NzkyMDIsImV4cCI6MjAxOTM1NTIwMn0.mYAmz9YILT_JObC7RBbg8hDM2e784ro9NxtN_PWmp00',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nome''',
      ));
  int? pedidoatual(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].numeroPedidoatual''',
      ));
  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  String? locationEst(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].locationEst''',
      ));
}

/// End Supabase Group Code

/// Start Asaas Cesar Group Code

class AsaasCesarGroup {
  static String baseUrl = 'https://sandbox.asaas.com/api/v3/';
  static Map<String, String> headers = {
    'access_token':
        '\$aact_YTU5YTE0M2M2N2I4MTliNzk0YTI5N2U5MzdjNWZmNDQ6OjAwMDAwMDAwMDAwMDAwNjEwMDg6OiRhYWNoX2M1YWNkNzJmLTE4ZDItNDc0ZS04YmI0LWNlODAwOTUxYmMxZg==',
  };
  static CriarPagamentoCall criarPagamentoCall = CriarPagamentoCall();
  static BuscarSaldoCesarCall buscarSaldoCesarCall = BuscarSaldoCesarCall();
  static CriarClienteCall criarClienteCall = CriarClienteCall();
  static VerificarPagamentoCall verificarPagamentoCall =
      VerificarPagamentoCall();
  static CriarSubcontaCall criarSubcontaCall = CriarSubcontaCall();
  static CriarAssinaturaCall criarAssinaturaCall = CriarAssinaturaCall();
}

class CriarPagamentoCall {
  Future<ApiCallResponse> call({
    double? value = 55,
    String? dueDate = '2024-11-11',
    String? description = 'teste de teste teste de teste de teste ',
    String? customer = 'cus_000005780249',
    String? billingType = 'UNDEFINED',
  }) async {
    final ffApiRequestBody = '''
{
  "customer": "${customer}",
  "value": ${value},
  "dueDate": "${dueDate}",
  "billingType": "UNDEFINED",
  "description": "${description}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Criar pagamento',
      apiUrl: '${AsaasCesarGroup.baseUrl}payments',
      callType: ApiCallType.POST,
      headers: {
        'access_token':
            '\$aact_YTU5YTE0M2M2N2I4MTliNzk0YTI5N2U5MzdjNWZmNDQ6OjAwMDAwMDAwMDAwMDAwNjEwMDg6OiRhYWNoX2M1YWNkNzJmLTE4ZDItNDc0ZS04YmI0LWNlODAwOTUxYmMxZg==',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? codigoUser(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.customer''',
      ));
  int? valorCobrado(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.value''',
      ));
  String? statusPagamento(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? url(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.invoiceUrl''',
      ));
}

class BuscarSaldoCesarCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Buscar saldo cesar',
      apiUrl: '${AsaasCesarGroup.baseUrl}finance/balance',
      callType: ApiCallType.GET,
      headers: {
        'access_token':
            '\$aact_YTU5YTE0M2M2N2I4MTliNzk0YTI5N2U5MzdjNWZmNDQ6OjAwMDAwMDAwMDAwMDAwNjEwMDg6OiRhYWNoX2M1YWNkNzJmLTE4ZDItNDc0ZS04YmI0LWNlODAwOTUxYmMxZg==',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CriarClienteCall {
  Future<ApiCallResponse> call({
    String? nome = '',
    String? mail = '',
    String? cpf = '',
  }) async {
    final ffApiRequestBody = '''
{
  "name": "${nome}",
  "email": "${mail}",
  "cpfCnpj": "${cpf}"
  }''';
    return ApiManager.instance.makeApiCall(
      callName: 'Criar Cliente',
      apiUrl: '${AsaasCesarGroup.baseUrl}customers',
      callType: ApiCallType.POST,
      headers: {
        'access_token':
            '\$aact_YTU5YTE0M2M2N2I4MTliNzk0YTI5N2U5MzdjNWZmNDQ6OjAwMDAwMDAwMDAwMDAwNjEwMDg6OiRhYWNoX2M1YWNkNzJmLTE4ZDItNDc0ZS04YmI0LWNlODAwOTUxYmMxZg==',
        'accept': 'application/json',
        'content-type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? idUser(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? erro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.errors[:].description''',
      ));
}

class VerificarPagamentoCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Verificar pagamento',
      apiUrl: '${AsaasCesarGroup.baseUrl}payments/${id}',
      callType: ApiCallType.GET,
      headers: {
        'access_token':
            '\$aact_YTU5YTE0M2M2N2I4MTliNzk0YTI5N2U5MzdjNWZmNDQ6OjAwMDAwMDAwMDAwMDAwNjEwMDg6OiRhYWNoX2M1YWNkNzJmLTE4ZDItNDc0ZS04YmI0LWNlODAwOTUxYmMxZg==',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
}

class CriarSubcontaCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? loginEmail = '',
    String? cpfCnpj = '',
    String? mobilePhone = '',
    String? addressNumber = '',
    String? province = '',
    String? postalCode = '',
    String? name = '',
    String? address = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${email}",
  "loginEmail": "${loginEmail}",
  "cpfCnpj": "${cpfCnpj}",
  "mobilePhone": "${mobilePhone}",
  "province": "${province}",
  "addressNumber": "${addressNumber}",
  "postalCode": "${postalCode}",
  "address": "${address}",
  "name": "${name}",
  "companyType": "LIMITED",
  "birthDate": "10-10-2000"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Criar subconta',
      apiUrl: '${AsaasCesarGroup.baseUrl}accounts',
      callType: ApiCallType.POST,
      headers: {
        'access_token':
            '\$aact_YTU5YTE0M2M2N2I4MTliNzk0YTI5N2U5MzdjNWZmNDQ6OjAwMDAwMDAwMDAwMDAwNjEwMDg6OiRhYWNoX2M1YWNkNzJmLTE4ZDItNDc0ZS04YmI0LWNlODAwOTUxYmMxZg==',
        'accept': 'application/json',
        'content-type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? apIkey(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.apiKey''',
      ));
  String? erro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.errors[:].description''',
      ));
}

class CriarAssinaturaCall {
  Future<ApiCallResponse> call({
    String? customer = 'cus_000005848918',
    String? billingType = '',
    double? value,
    String? nextDueDate = '',
    String? cycle = '',
    String? expiryMonth = '',
    String? expiryYear = '',
    String? ccv = '',
    String? holderName = '',
    String? name = '',
    String? email = '',
    String? cpfCnpj = '',
    String? postalCode = '',
    String? addressNumber = '',
    String? phone = '',
    String? number = '',
  }) async {
    final ffApiRequestBody = '''
{
  "billingType": "CREDIT_CARD",
  "cycle": "${cycle}",
  "creditCard": {
    "holderName": "${holderName}",
    "number": "${number}",
    "expiryMonth": "${expiryMonth}",
    "expiryYear": "${expiryYear}",
    "ccv": "${ccv}"
  },
  "creditCardHolderInfo": {
    "name": "${name}",
    "email": "${email}",
    "cpfCnpj": "${cpfCnpj}",
    "postalCode": "${postalCode}",
    "addressNumber": "${addressNumber}",
    "phone": "${phone}"
  },
  "customer": "${customer}",
  "value": ${value},
  "nextDueDate": "${nextDueDate}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Criar assinatura',
      apiUrl: '${AsaasCesarGroup.baseUrl}subscriptions',
      callType: ApiCallType.POST,
      headers: {
        'access_token':
            '\$aact_YTU5YTE0M2M2N2I4MTliNzk0YTI5N2U5MzdjNWZmNDQ6OjAwMDAwMDAwMDAwMDAwNjEwMDg6OiRhYWNoX2M1YWNkNzJmLTE4ZDItNDc0ZS04YmI0LWNlODAwOTUxYmMxZg==',
        'accept': 'application/json',
        'content-type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? erro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.errors[:].description''',
      ));
  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.creditCard.creditCardToken''',
      ));
  String? numeroCarto(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.creditCard.creditCardNumber''',
      ));
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? tipoPagamento(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.billingType''',
      ));
  String? ciclo(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cycle''',
      ));
  String? vencimento(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.nextDueDate''',
      ));
  double? valor(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.value''',
      ));
  String? iduser(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.customer''',
      ));
  String? idAssinatura(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
}

/// End Asaas Cesar Group Code

/// Start Asaas Cesar profissional Group Code

class AsaasCesarProfissionalGroup {
  static String baseUrl = 'https://sandbox.asaas.com/api/v3/';
  static Map<String, String> headers = {};
  static CriarClientePROFISSIONALCall criarClientePROFISSIONALCall =
      CriarClientePROFISSIONALCall();
  static CriarPagamentoPROFISSIONALCall criarPagamentoPROFISSIONALCall =
      CriarPagamentoPROFISSIONALCall();
  static ConfirmarPagamentoPROFISSIONALCall confirmarPagamentoPROFISSIONALCall =
      ConfirmarPagamentoPROFISSIONALCall();
}

class CriarClientePROFISSIONALCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? email = '',
    String? cpfCnpj = '',
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "name": "${name}",
  "email": "${email}",
  "cpfCnpj": "${cpfCnpj}",
  "token": "${token}",
  "company": "company"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Criar Cliente PROFISSIONAL',
      apiUrl: '${AsaasCesarProfissionalGroup.baseUrl}customers',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'content-type': 'application/json',
        'access_token': '${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class CriarPagamentoPROFISSIONALCall {
  Future<ApiCallResponse> call({
    double? value,
    String? dueDate = '',
    String? description = '',
    String? customer = '',
    String? token = '',
    double? fixedValue,
    String? walletId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "customer": "${customer}",
  "value": ${value},
  "dueDate": "${dueDate}",
  "billingType": "UNDEFINED",
  "description": "${description}",
  "split": [
    {
      "walletId": "655642d5-1eb2-4b6b-a4e4-bbd4391087ba",
      "fixedValue": 0.5
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Criar pagamento PROFISSIONAL',
      apiUrl: '${AsaasCesarProfissionalGroup.baseUrl}payments',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'content-type': 'application/json',
        'access_token': '${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? url(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.invoiceUrl''',
      ));
}

class ConfirmarPagamentoPROFISSIONALCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Confirmar pagamento PROFISSIONAL',
      apiUrl: '${AsaasCesarProfissionalGroup.baseUrl}/payments/${id}',
      callType: ApiCallType.GET,
      headers: {
        'accept': 'application/json',
        'content-type': 'application/json',
        'access_token': '${token}',
      },
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? url(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.invoiceUrl''',
      ));
}

/// End Asaas Cesar profissional Group Code

class CepCall {
  static Future<ApiCallResponse> call({
    String? varcep = '84033000',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'cep',
      apiUrl: 'viacep.com.br/ws/${varcep}/json/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? rua(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.logradouro''',
      ));
  static dynamic bairro(dynamic response) => getJsonField(
        response,
        r'''$.bairro''',
      );
  static dynamic cidade(dynamic response) => getJsonField(
        response,
        r'''$.localidade''',
      );
  static dynamic estado(dynamic response) => getJsonField(
        response,
        r'''$.uf''',
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
