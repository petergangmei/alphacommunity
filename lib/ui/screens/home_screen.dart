import 'package:alphacommunity/blocs/data_bloc/data_bloc.dart';
import 'package:alphacommunity/data/respository.dart';
import 'package:alphacommunity/data/sharepreference.dart';
import 'package:alphacommunity/ui/widgets/appDrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:alphacommunity/global.dart' as global;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    
    return BlocProvider(
      // create: (context) => DataBloc(RepositoryProvider.of<MainRepository>(context),)..add(LoadHomedataEvent()),
      create: (context) => DataBloc(RepositoryProvider.of<MainRepository>(context),),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Alpha Community"),
          backgroundColor: Colors.black,
        ),
        drawer: const appDrawerWidget(),
        body: BlocBuilder<DataBloc, DataState>(
          builder: (context, state) {
            print('---- is first start ${global.firstStart}------');
            if(global.firstStart){
              BlocProvider.of<DataBloc>(context).add(GetTokenEvent());
              global.firstStart = false;
              setPrefsFirstStart(false);
            }
            return SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(global.tokenValue),
                Center(
                  child: ElevatedButton(
                      onPressed: () {
                        print('----click in ui----');
                        BlocProvider.of<DataBloc>(context).add(LoadHomedataEvent());
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
