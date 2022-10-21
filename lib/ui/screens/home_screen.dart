import 'package:alphacommunity/blocs/homedata_bloc/homedata_bloc.dart';
import 'package:alphacommunity/ui/widgets/appDrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomedataBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Alpha Community"),
          backgroundColor: Colors.black,
        ),
        drawer: const appDrawerWidget(),
        body: BlocBuilder<HomedataBloc, HomedataState>(
          builder: (context, state) {
            return SingleChildScrollView(
                child: Column(
              children: [
                Center(
                  child: ElevatedButton(
                      onPressed: () {
                        print('----click in ui----');
                        BlocProvider.of<HomedataBloc>(context).add(GetToken());
                      },
                      child: const Text("click")),
                )
              ],
            ));
          },
        ),
      ),
    );
  }
}
