import '../database.dart';

class AppuntamentiTable extends SupabaseTable<AppuntamentiRow> {
  @override
  String get tableName => 'appuntamenti';

  @override
  AppuntamentiRow createRow(Map<String, dynamic> data) => AppuntamentiRow(data);
}

class AppuntamentiRow extends SupabaseDataRow {
  AppuntamentiRow(super.data);

  @override
  SupabaseTable get table => AppuntamentiTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get cliente => getField<String>('cliente')!;
  set cliente(String value) => setField<String>('cliente', value);

  String get luogo => getField<String>('luogo')!;
  set luogo(String value) => setField<String>('luogo', value);

  DateTime get data1 => getField<DateTime>('data1')!;
  set data1(DateTime value) => setField<DateTime>('data1', value);

  DateTime? get data2 => getField<DateTime>('data2');
  set data2(DateTime? value) => setField<DateTime>('data2', value);

  int get pullman => getField<int>('pullman')!;
  set pullman(int value) => setField<int>('pullman', value);

  int get prezzo => getField<int>('prezzo')!;
  set prezzo(int value) => setField<int>('prezzo', value);
}
