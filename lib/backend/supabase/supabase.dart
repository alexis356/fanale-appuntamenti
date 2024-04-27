import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://tnjofcqpmkuarfmnjznz.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRuam9mY3FwbWt1YXJmbW5qem56Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTQxNDcwNzEsImV4cCI6MjAyOTcyMzA3MX0.O-dnUSSWcQ9hw63eQ-HM3NEw-ytWOVEhVq0ZjzwcicQ';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
