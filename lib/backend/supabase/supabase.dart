import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://tnxjgdzsvffqubrattzm.supabase.co/';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRueGpnZHpzdmZmcXVicmF0dHptIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODY3MjM2OTEsImV4cCI6MjAwMjI5OTY5MX0.ONb25YSgrApJISU3ix34nIg7zsTrIC39gkPioEwwj14';

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
