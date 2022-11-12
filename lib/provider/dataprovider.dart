import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/api.dart';
import 'package:riverpod_demo/models/dummy.dart';

final userDataProvider = FutureProvider<List<DummyModels>>((ref) async {
  return ref.read(apiProver).getData();
});
