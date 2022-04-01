import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:master_detail/cubit/master_detail_cubit.dart';

class GroupsDetailPage extends StatelessWidget {
  const GroupsDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MasterDetailCubit, MasterDetailState>(
      builder: (context, state) {
        if (state is LoadedItemsState) {
          return Scaffold(
              appBar: AppBar(
                title: Text(state.selectedElement.name),
              ),
              body: Center(
                child: Text(state.selectedElement.name),
              ));
        }

        return Scaffold(
          appBar: AppBar(
            title: const Text('Details'),
          ),
          body: Container(),
        );
      },
    );
  }
}
