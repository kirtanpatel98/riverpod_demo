import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/provider/dataprovider.dart';

class NewPage extends ConsumerWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final _data = ref.watch(userDataProvider);
    return Scaffold(
      body: _data.when(
        data: (_data) {
          return Column(
            children: [
              ..._data.map(
                (e) => ListView(
                  primary: false,
                  shrinkWrap: true,
                  children: [
                    ListTile(
                      title: Text(e.firstName),
                      subtitle: Text(e.lastName),
                      trailing: CircleAvatar(
                        backgroundImage: NetworkImage(e.avatar),
                      ),
                    )
                  ],
                ),
              ),
            ],
          );
        },
        error: (err, s) => Center(
          child: Text(
            err.toString(),
            style: TextStyle(
              fontSize: 25,
              color: Colors.red,
            ),
          ),
        ),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
