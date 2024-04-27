import 'dart:convert';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class SearchAppuntamentiCall {
  static Future<ApiCallResponse> call({
    String? searchString = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Search Appuntamenti',
      apiUrl:
          'https://tnjofcqpmkuarfmnjznz.supabase.co/rest/v1/appuntamenti?cliente=ilike.*$searchString*&select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRuam9mY3FwbWt1YXJmbW5qem56Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTQxNDcwNzEsImV4cCI6MjAyOTcyMzA3MX0.O-dnUSSWcQ9hw63eQ-HM3NEw-ytWOVEhVq0ZjzwcicQ',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRuam9mY3FwbWt1YXJmbW5qem56Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTQxNDcwNzEsImV4cCI6MjAyOTcyMzA3MX0.O-dnUSSWcQ9hw63eQ-HM3NEw-ytWOVEhVq0ZjzwcicQ',
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

class DeleteAllRowsCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'DeleteAllRows',
      apiUrl: 'https://tnjofcqpmkuarfmnjznz.supabase.co/rest/v1/appuntamenti',
      callType: ApiCallType.DELETE,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRuam9mY3FwbWt1YXJmbW5qem56Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTQxNDcwNzEsImV4cCI6MjAyOTcyMzA3MX0.O-dnUSSWcQ9hw63eQ-HM3NEw-ytWOVEhVq0ZjzwcicQ',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRuam9mY3FwbWt1YXJmbW5qem56Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTQxNDcwNzEsImV4cCI6MjAyOTcyMzA3MX0.O-dnUSSWcQ9hw63eQ-HM3NEw-ytWOVEhVq0ZjzwcicQ',
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
